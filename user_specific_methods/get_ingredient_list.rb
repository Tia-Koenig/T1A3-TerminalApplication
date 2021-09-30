def get_ingredient_list
    puts "What ingredient do you have to cook with?"

    ingredient_list = [gets.chomp]

    yes_or_no = ""

    while yes_or_no != "no"
        puts "Do you have any other ingredients to cook with? yes/no"
        yes_or_no = gets.chomp
        if yes_or_no == "yes"
            puts "What other ingredient do you have to cook with?"
            ingredient = gets.chomp
            ingredient_list << ingredient 
        elsif yes_or_no == "no"
            break
        else 
            puts "Invalid input, please enter either yes or no"
        end
    end

    return ingredient_list
end