require_relative "message_intro.rb"
require "csv"

formatted_recipes = recipes.map do |row|
    row.to_h
end
