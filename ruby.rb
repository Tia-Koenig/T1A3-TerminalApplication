require_relative "message_intro.rb"
require "csv"


recipes = CSV.parse(File.read("recipes.csv"), headers: true, :header_converters => :symbol, :converters => :all)

formatted_recipes = recipes.map do |row|
    row.to_h
end

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

formatted_recipes[0..5].each do |recipe|
    recipe.each do |key, value|
        if ingredient_list.include?(value)
            puts "Title: #{recipe[:title]}\nDirections: #{recipe[:directions]}"
        end
    end
end
