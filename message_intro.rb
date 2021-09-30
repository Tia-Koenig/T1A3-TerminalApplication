require "tty-prompt"
require_relative "ruby.rb"

def options_menu
    prompt = TTY::Prompt.new
    
    prompt.select("Please choose an option") do |menu| 
        menu.choice "Find a recipe", 1
        menu.choice "Browse all recipes", 2
        menu.choice "Help", 3
        menu.choice "Exit", 4
    end
end

def menu_selection(menu)
    case menu
    when 4
        exit()
    end
end

def exit
    puts "Thanks for using my app! Goodbye!"
end

#welcome message
def welcome_page
    puts "Welcome to my App - What to cook?"
    # puts "Here are some instructions to help you on your journey for the perfect recipe"
    puts "To use the app, please select an option in the menu below, find a recipe will prompt you to enter an ingredient, once you enter an ingredient, it will ask if you have any more ingredients, if you do type yes, if not, type no, once the app has your ingredients, it will then search recipes and display them to you, you can then get to cooking! you may also choose to browse all the recipes. The help option is there to give more information on the app if you get stuck or confused, and exit will exit you out of the application."
    # puts "Please follow the prompts for yummy recipes"

    menu_selection(options_menu())
end

welcome_page()

