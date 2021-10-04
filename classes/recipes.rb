require_relative "../recipes_data.rb"
require "csv"
require "tty-table"
require "artii"

class Recipes
    attr_reader
    def initialize
        # Recipe class calls the formatted_recipes function and stores it's value in a variable called recipe_data. This can then be used in the class methods
        @recipe_data = formatted_recipes()
    end

    # Find recipe method takes in an array of recipes as an argument and iterates over the first 5 recipes in recipe_data. For each recipe it gets the key and the value. Then i'm checking if the recipe value is included in the ingredients array, and if it is, I'm outputing the recipe details.
    
    def find_recipes(ingredients)
        system 'clear'
        @recipe_data.each do |recipe|
            recipe.each do |key, value|
                i = 1
                if ingredients.include?(value)
                    table = TTY::Table.new(["ID", "Title", "Directions", "Ingredient 1", "Quantity 1", "Unit 1", "Ingredient 2", "Quantity 2", "Unit 2", "Ingredient 3", "Quantity 3", "Unit 3"], [[recipe[:id], recipe[:title], recipe[:directions], recipe[:ingredient01], recipe[:quantity01], recipe[:unit01], recipe[:ingredient02], recipe[:quantity02], recipe[:unit02], recipe[:ingredient03], recipe[:quantity03], recipe[:unit03]]])
            
                    # puts "Title: #{recipe[:title]}"
                    # puts "Directions: #{recipe[:directions]}"
                    while i < 4
                        ingredient = "ingredient0#{i}".to_sym
                        quantity = "quantity0#{i}".to_sym
                        unit = "unit0#{i}".to_sym
                        i = i + 1
                    end 
                    # else
                    #     puts "Sorry, we couldn't find a match, please search for another ingredient"
                    puts table.render(:unicode, multiline: true, alignments: [:left, :left])
                    puts "---------------------------------------------------------------------------------------\n\n"
                end
            end
        end
    end

    def add_recipe(recipe)
        system 'clear'
        if (File.exist?("recipes.csv"))
            CSV.open("recipes.csv", "a+") do |csv|
                csv << recipe.values
            end
        else 
            CSV.open("recipes.csv", "a+", :headers => recipe.keys, write_headers: true) do |csv|
                csv << recipe.values
            end
        end
        puts "Recipe added to file successfully!"
    end

    def remove_recipe(recipe)
        system 'clear'
        puts "Are you sure you want to delete:\n#{recipe[:id]}. #{recipe[:title]} yes/no?"
        yes_or_no = gets.chomp.downcase
        if yes_or_no == "yes"
            recipes = CSV.table("recipes.csv")
            recipes.delete_if do |row|
                row[:id] == recipe[:id]
            end
            File.open("recipes.csv", 'w') do |file|
                file.write(recipes.to_csv)
            end
        elsif yes_or_no == "no"
            return
        else 
            "Invalid input, please enter yes or no"
        end

    end

end