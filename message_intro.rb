require "tty-prompt"
require_relative "ruby.rb"


#welcome message
def welcome_page
    puts "Welcome to my App - What to cook?"
    puts "Here are some instructions to help you on your journey for the perfect recipe"
    puts "-insert Instructions for how to use app-"
    puts "Let's go, please follow the prompts for yummy recipes"
    prompt = TTY::Prompt.new
    prompt.select("Please select an option") do |menu| 
        menu.choice "Find a recipe"
        menu.choice "Browse all recipes"
        menu.choice "Help"
        menu.choice "Exit"
    end
end

welcome_page()

