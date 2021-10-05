require_relative "./utility_methods/display_message.rb"
require_relative "./messages/help_message.rb"
require_relative "./cli_arguments/display_all_recipes.rb"
require_relative "./messages/welcome_message.rb"
require_relative "./methods/main_menu.rb"

if ARGV.include?("-h")
    display_message(help_message())
end

if ARGV.include?("-a")
    display_all_recipes()
end

display_message(welcome_message())

main_menu(main_menu_options())