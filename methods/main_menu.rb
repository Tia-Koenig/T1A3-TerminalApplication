require_relative "../utility_methods/menu_select.rb"
require_relative "recipe_menu.rb"
require_relative "../utility_methods/display_message.rb"
require_relative "pantry_menu.rb"
require_relative "../messages/help_message.rb"
require_relative "../utility_methods/exit.rb"


# Main menu options

def main_menu_options 
    system 'clear'
    return [
        {
            name: "Recipes",
            value: 1
        },
        {
            name: "Pantry",
            value: 2
        },
        {
            name: "Help", 
            value: 3
        },
        {
            name: "Exit", 
            value: 4
        }
    ]
end

def main_menu(menu_options)
    system 'clear'
    loop do
        case menu_select(menu_options)
        when 1
            recipe_menu(recipes_menu_options())
        when 2
            pantry_menu(pantry_menu_options())
        when 3
            display_message(help_message())
        when 4
            exit()
        end
    end
end