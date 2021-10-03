require_relative "../recipes_data.rb"
require "csv"

class Recipes
    attr_reader 
    # :formatted_recipes
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
                    puts "Title: #{recipe[:title]}"
                    puts "Directions: #{recipe[:directions]}"
                    puts "Ingredients List:"
                    while i < 10
                        ingredient = "ingredient0#{i}".to_sym
                        quantity = if i == 1 
                            "quantity".to_sym
                        else
                            "quantity0#{i}".to_sym
                        
                        end
                        unit = "unit0#{i}".to_sym

                        puts "Ingredient: #{recipe[ingredient]}: Quantity: #{recipe[quantity]} Unit: #{recipe[unit]}"
                        i = i + 1
                    end 
                        puts "---------------------------------------------------------------------------------------\n\n"
                # else ingredients != ingredients.include?(value)
                #     puts "Sorry, we couldn't find a match, please search for another ingredient"
                end
            end
        end
    end

    def add_recipe(recipe)
        if (File.exist?("recipes.csv"))
            CSV.open("recipes.csv", "a+", :row_sep => "\r\n") do |csv|
                csv << recipe.values
            end
        else 
            CSV.open("recipes.csv", "a+", :headers => recipe.keys, write_headers: true) do |csv|
                csv << recipe.values
            end
        end
        puts "Recipe added to file successfully!"
    end

    # def saved_recipes
    # end

    # def remove_recipe
    # end
end