require_relative "../recipes_data.rb"

def get_recipe_to_delete
    recipe_data = formatted_recipes()
    recipe_data.each do |recipe|
        puts "#{recipe[:id]}. #{recipe[:title]}"
    end
    puts "Please enter the ID of the recipe you want to delete"
    id = gets.chomp.to_i

    if recipe_data.any? { |recipe| recipe[:id] == id }
        recipe = recipe_data.find {|recipe| recipe[:id] == id}
        return recipe
    else
        puts "Recipe ID not found, please enter a valid ID"
    end
end
