class Recipes
    attr_reader
    def find_recipes(ingredients)
        ingredients.each do |ingredient|
            puts ingredient
        end
    end
end 