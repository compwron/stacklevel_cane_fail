if Rails.env.development? or Rails.env.test?
  require 'cane/rake_task'
  require 'cane/migrations_check'

  def patterns
    "{rakefile,Gemfile,{#{paths}}/**/*.{rb,rake,feature}}"
  end

  def line_length
    180
  end

  def paths
    list = Dir['*/'].map { |d| d[0..-2] }
    list -= ['systems']
    list -= ['spec']
    list -= ['vendor']
    list.join ','
  end

  def style_exclude
    [
      'db/schema.rb',
      'Gemfile',
      'Gemfile.lock'
    ]
  end

  # These were taken from the output of cane.
  # They are in descending order of complexity.
  def abc_exclude
    [
    ]
  end

  def migrations_exclude
    [
    ]
  end

  namespace :cane do
    desc ''
    Cane::RakeTask.new(:quality) do |cane|
      cane.parallel      = true
      cane.abc_max       = 15
      cane.no_doc        = true
      cane.style_measure = line_length

      cane.abc_glob   = patterns
      cane.style_glob = patterns

      cane.style_exclude = style_exclude
      cane.abc_exclude   = abc_exclude

      cane.use Cane::MigrationsCheck, {migration_files: "db/migrate/*.rb", migrations_exclude: migrations_exclude}
    end

    desc 'Check abc metrics with cane'
    Cane::RakeTask.new(:warn) do |cane|
      cane.abc_max  = 7
      cane.no_doc   = true
      cane.no_style = true

      cane.abc_glob    = patterns
      cane.abc_exclude = abc_exclude
    end

    desc 'Check code quality metrics with cane for all files'
    Cane::RakeTask.new(:all) do |cane|
      cane.abc_max       = 9
      cane.no_doc        = true
      cane.style_measure = line_length

      cane.abc_glob   = patterns
      cane.style_glob = patterns

    end

  end

  desc 'Run cane to check quality metrics'
  task :cane => 'cane:quality'
end
