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

    while i < 4
        i = i + 1
        if i == 4
            break
        end
        system 'clear'
        puts "Ingredient added, please enter another ingredient"
        ingredient = gets.chomp
        puts "Please enter the quantitiy"
        quantity = gets.chomp
        puts "Please enter a unit of measure"
        unit = gets.chomp

        recipe_hash.merge!(
            "ingredient0#{i}".to_sym => ingredient,
            "quantity0#{i}".to_sym => quantity,
            "unit0#{i}".to_sym => unit
        )
    end
    
    return recipe_hash

end
