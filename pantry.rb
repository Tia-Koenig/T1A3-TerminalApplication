# require_relative "./files/pantry_list.txt"

class Pantry
    attr_accessor :pantry_list, :pantry_list_file
    def initialize(list)
        @pantry_list = []
        @pantry_list_file = "pantry_list.txt"
    end

    # def view_pantry
    #     system 'clear'
    # end

    # def add_pantry_ingredients
    #     system 'clear'
    #     "What would you like to add to the pantry?"
    #     pantry_input = gets.chomp
    #     @pantry_list = file_to_array(@pantry_list_file)
    #     @pantry_list << pantry_input
    #     array_to_file(@pantry_list)
    #     puts "Your ingredient has been added to the Pantry!"
    # end

    # def remove_pantry_ingredients
    #     system 'clear'
    #     puts "What would you like to remove from the pantry?"
    # end




end
