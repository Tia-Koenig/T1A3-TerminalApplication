require_relative "./cli_arguments/cli_arguments.rb"
require_relative "./utility_methods/display_message.rb"
require_relative "./messages/welcome_message.rb"
require_relative "./methods/main_menu.rb"

if ARGV.include?("-h")
    help_cli_argument()
end

display_message(welcome_message())

main_menu(main_menu_options())