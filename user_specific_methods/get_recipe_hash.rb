require_relative "../recipes_data.rb"

def get_recipe_hash

    recipes = formatted_recipes()
    yes_or_no = ""

    i = 1
    puts "Please enter the title of the recipe"
    title = gets.chomp

    puts "please enter the recipe directions"
    directions = gets.chomp

    puts "please enter an ingredient"
    ingredient = gets.chomp

    puts "Please enter the quanitity"
    quantity = gets.chomp

    puts "please enter a unit of measure for ingredient"
    unit = gets.chomp

    recipe_hash = {
        ID: recipes.length + 1,
        title: title,
        directions: directions,
        "ingredient0#{i}".to_sym => ingredient,
        quantity: quantity,
        "unit0#{i}".to_sym => unit
    }

    while yes_or_no != "no"
        i = i + 1
        puts "Do you have any other ingredients to add? yes or no"
        yes_or_no = gets.chomp.downcase 
        if yes_or_no == "yes"
            puts "Please enter ingredient"
            ingredient = gets.chomp
            puts "Please enter the quantitiy"
            quantity = gets.chomp
            puts "Please enter a unit of measure"
            unit = gets.chomp

            if i < 10
                recipe_hash.merge!(
                    "ingredient0#{i}".to_sym => ingredient,
                    "quantity0#{i}".to_sym => quantity,
                    "unit0#{i}".to_sym => unit
                )
            else
                recipe_hash.merge!(
                    "ingredient#{i}".to_sym => ingredient,
                    "quantity#{i}".to_sym => quantity,
                    "unit#{i}".to_sym => unit
                )
            end
        elsif yes_or_no == "no"
            break
        else
            puts "Invalid input, please enter either yes or no"
        end
    end
    
    return recipe_hash

end
