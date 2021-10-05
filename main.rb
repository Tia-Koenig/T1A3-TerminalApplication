require_relative "./utility_methods/display_message.rb"
require_relative "./messages/welcome_message.rb"
require_relative "./messages/help_message.rb"
require_relative "./methods/main_menu.rb"

if ARGV.include?("-h")
    display_message(help_message())
end

display_message(welcome_message())

main_menu(main_menu_options())