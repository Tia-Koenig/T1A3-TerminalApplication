require_relative "../utility_methods/menu_select.rb"
require_relative "recipe_menu.rb"
require_relative "../utility_methods/display_message.rb"
require_relative "../messages/help_message.rb"
require_relative "../utility_methods/exit.rb"


# Main menu options

def main_menu_options 
    return [
        {
            name: "Recipes",
            value: 1
        },
        {
            name: "Help", 
            value: 2
        },
        {
            name: "Exit", 
            value: 3
        }
    ]
end

def main_menu(menu_options)
    loop do
        case menu_select(menu_options)
        when 1
            recipe_menu(recipes_menu_options())
        when 2
            display_message(help_message())
        when 3
            exit()
        end
    end
end