require_relative "../utility_methods/menu_select.rb"
require_relative "../user_specific_methods/get_ingredient_list.rb"
require_relative "main_menu.rb"
require_relative "../utility_methods/exit.rb"
require_relative "../pantry.rb"

def pantry_menu_options 
    system 'clear'
    return [
        {
            name: "Pantry list",
            value: 1
        },
        {
            name: "Add ingredient to Pantry list", 
            value: 2
        },
        {
            name: "Remove ingredient from Pantry list",
            value: 3
        },
        {
            name: "Back to Main Menu",
            value: 4
        },
        {
            name: "Exit",
            value: 5
        }
    ]
end

def pantry_menu(menu_options)
    system 'clear'
    loop do
        case menu_select(menu_options)
        when 1
            # ingredient list
        when 2
            #add ingredient
        when 3
            #remove ingredient
        when 4
            menu_select(main_menu_options())
        when 5
            exit()
        end
    end
end