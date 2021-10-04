require_relative "../recipes_data.rb"

def get_recipe_id
    recipe_data = formatted_recipes()
    recipe_data.each do |recipe|
        puts "#{recipe[:id]}. #{recipe[:title]}"
    end
    puts "Please enter the ID of the recipe you want to delete"
    id = gets.chomp.to_i

    if recipe_data.any? { |recipe| recipe[:id] == id }
        return id
    else
        puts "Recipe ID not found, please enter a valid ID"
    end
end
