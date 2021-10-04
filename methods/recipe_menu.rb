require_relative "../utility_methods/menu_select.rb"
require_relative "../user_specific_methods/get_ingredient_list.rb"
require_relative "../user_specific_methods/get_recipe_hash.rb"
require_relative "../classes/recipes.rb"
require_relative "main_menu.rb"
require_relative "../user_specific_methods/get_recipe_to_delete.rb"
require_relative "../utility_methods/exit.rb"

#Recipe menu options

def recipes_menu_options 
    system 'clear'
    return [
        {
            name: "Find a recipe",
            value: 1
        },
        {
            name: "Add a recipe",
            value: 2
        },
        {
            name: "Remove a recipe",
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

def recipe_menu(menu_options)
    system 'clear'
    loop do
        case menu_select(menu_options)
        when 1
            ingredient_list = get_ingredient_list()
            recipes = Recipes.new
            recipes.find_recipes(ingredient_list)
        when 2
            recipe_hash = get_recipe_hash()
            add_recipe = Recipes.new
            add_recipe.add_recipe(recipe_hash)
        when 3
            recipe_id = get_recipe_to_delete()
            remove_recipe = Recipes.new 
            remove_recipe.remove_recipe(recipe_id)
        when 4
            menu_select(main_menu_options())
        when 5
            exit()
        end
    end
end

