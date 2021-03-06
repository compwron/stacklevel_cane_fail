require "spring/version"

module Spring
  module Client
    class Help < Command
      attr_reader :spring_commands, :application_commands

      def self.description
        "Print available commands."
      end

      def self.call(args)
        require "spring/commands"
        super
      end

      def initialize(args, spring_commands = nil, application_commands = nil)
        super args

        @spring_commands      = spring_commands      || Spring::Client::COMMANDS.dup
        @application_commands = application_commands || Spring.commands.dup

        @application_commands["rails"] = @spring_commands.delete("rails")
      end

      def call
        puts formatted_help
      end

      def formatted_help
        ["Version: #{env.version}\n",
         "Usage: spring COMMAND [ARGS]\n",
         *command_help("spring itself", spring_commands),
         '',
         *command_help("your application", application_commands)].join("\n")
      end

      def command_help(subject, commands)
        ["Commands for #{subject}:\n",
        *commands.sort_by(&:first).map { |name, command| display(name, command) }.compact]
      end

      private

      def all_commands
        spring_commands.merge application_commands
      end

      def description_for_command(command)
        if command.respond_to?(:description)
          command.description
        elsif command.respond_to?(:exec_name)
          "Runs the #{command.exec_name} command"
        else
          "No description given."
        end
      end

      def display(name, command)
        if description = description_for_command(command)
          "  #{name.ljust(max_name_width)}  #{description}"
        end
      end

      def max_name_width
        @max_name_width ||= all_commands.keys.map(&:length).max
      end
    end
  end
end
