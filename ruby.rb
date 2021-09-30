require_relative "message_intro.rb"
require "csv"





recipes = CSV.parse(File.read("recipes.csv"), headers: true, :header_converters => :symbol, :converters => :all)

formatted_recipes = recipes.map do |row|
    row.to_h
end



formatted_recipes[0..5].each do |recipe|
    recipe.each do |key, value|
        if ingredient_list.include?(value)
            puts "Title: #{recipe[:title]}\nDirections: #{recipe[:directions]}"
        end
    end
end
