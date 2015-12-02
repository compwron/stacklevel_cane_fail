require 'cane/file'
require 'cane/task_runner'
module Cane
  class MigrationsCheck < Struct.new(:opts)
    def self.key; :migrations; end
    def self.name; "Migrations content check"; end

    NON_ALLOWED_STATEMENTS = %w{SELECT INSERT UPDATE}
    EFFECTIVE_FROM = "20150810174060"

    def self.options
      {
        migration_files: ["Migration files", default: ["'db/migrate/*.rb'"]]
      }
    end

    def violations
      worker.map(file_names) {|file_name|
        find_violations(file_name)
      }.flatten
    end

    protected

    def find_violations(file_name)
      return [] if excluded? file_name
      non_ddl_violations = analyze_non_ddl(file_name)
      add_columns_with_no_after_violations = analyze_add_column_with_no_after(file_name)
      change_table_violations = change_table_violations(file_name)
      (non_ddl_violations + add_columns_with_no_after_violations + change_table_violations).compact
    end

    def analyze_non_ddl(file_name)
      Cane::File.iterator(file_name).map.with_index do |line, number|
        non_ddl_match = search_non_allowed_statements(line)
        !!non_ddl_match ? generate_non_ddl_violation_map(file_name, number, non_ddl_match) : nil
      end.compact
    end

    def search_non_allowed_statements(content)
      content.match("#{NON_ALLOWED_STATEMENTS.join('|')}?")
    end

    def generate_non_ddl_violation_map(file_name, number, non_ddl_match)
      {
        file: file_name,
        line: number + 1,
        label: "Uses '#{non_ddl_match[0]}'",
        description: "Non allowed statements detected"
      }
    end

    def change_table_violations(file_name)
      Cane::File.iterator(file_name).map.with_index do |line, number|
        (line.include?('change_table') && !line.include?('bulk')) ? change_table_violation_map(file_name, number) : nil
      end
    end

    def change_table_violation_map(file_name, number)
      {
        file: file_name,
        line: number + 1,
        label: "Uses change_table",
        description: 'Use add_column remove_column, or change_column instead of change_table'
      }
    end

    def analyze_add_column_with_no_after(file_name)
      Cane::File.iterator(file_name).map.with_index do |line, number|
        add_column_without_after?(line) ? generate_bad_add_column_violation_map(file_name, number) : nil
      end.compact
    end

    def add_column_without_after?(content)
      temp = content.downcase
      adds_column = (temp.include?("t.column") or temp.include?("add_column") or temp.include?("add column"))
      adds_column and !temp.include? "after"
    end

    def generate_bad_add_column_violation_map(file_name, number)
      {
        file: file_name,
        line: number + 1,
        label: "Invalid",
        description: "Add column migrations with no after option specified"
      }
    end


    def file_names
      Dir[opts.fetch(:migration_files)]
    end

    def excluded?(migration_file_name)
      return true if exclusions.include? migration_file_name
      return false unless defined? EFFECTIVE_FROM
      get_migration_version(migration_file_name) < EFFECTIVE_FROM
    end

    def exclusions
      opts.fetch(:migrations_exclude, []).flatten.to_set
    end

    def get_migration_version(migration_file_name)
      migration_file_name.split("/").last.split("_").first
    end

    def worker
      Cane.task_runner(opts)
    end
  end
end
