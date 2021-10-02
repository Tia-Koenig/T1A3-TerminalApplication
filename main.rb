require_relative "./utility_methods/display_message.rb"
require_relative "./messages/welcome_message.rb"
require_relative "./methods/main_menu.rb"

display_message(welcome_message())

main_menu(main_menu_options())

