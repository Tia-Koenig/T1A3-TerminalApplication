require_relative "../recipes_data.rb"

def display_all_recipes
    recipe_data = formatted_recipes()

    if recipe_data.length > 0
        recipe_data.each do |recipe|
            i = 1
            puts "ID: #{recipe[:id]}\nTitle: #{recipe[:title]}\nDirections: #{recipe[:directions]}"
            while i < 4
                ingredient = "ingredient0#{i}".to_sym
                quantity = "quantity0#{i}".to_sym
                unit = "unit0#{i}".to_sym
                puts "Ingredient #{i}: #{recipe[ingredient]}\nQuantity #{i}: #{recipe[quantity]}\nUnit #{i}: #{recipe[unit]}"
                i = i + 1
            end 
            puts "---------------------------------------------------------------------------------------\n\n"
        end
    end
end