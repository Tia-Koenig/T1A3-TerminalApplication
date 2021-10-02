require_relative "./utility_methods/display_message.rb"
require_relative "./utility_methods/menu_select.rb"
require_relative "./utility_methods/exit.rb"
require_relative "./messages/welcome_message.rb"
require_relative "./messages/help_message.rb"
require_relative "./user_specific_methods/get_ingredient_list.rb"
require_relative "./classes/recipes.rb"

display_message(welcome_message())
#menu_select takes an array of options as an argument
loop do
    case menu_select(start_menu_options())
    when 1
        ingredient_list = get_ingredient_list()
        recipes = Recipes.new
        recipes.find_recipes(ingredient_list)
    when 2
        display_message(help_message())
    when 3
        exit()
    when 4
    when 5
    end
end
