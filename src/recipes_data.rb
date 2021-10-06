require 'csv'

# Parsing the CSV file and setting the headers to true (the first line of the CSV file), then converting those headers to symbols
def formatted_recipes
    recipes = CSV.parse(File.read("recipes.csv"), headers: true, :header_converters => :symbol, :converters => :all)

    return formatted_recipes = recipes.map do |row|
        row.to_h
    end
end