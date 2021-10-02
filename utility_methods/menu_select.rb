require "tty-prompt"

def menu_select(options)
    prompt = TTY::Prompt.new
    prompt.select("Please choose an option:", options)
end

# Start menu options


def start_menu_options 
    return [
        {
            name: "Find a recipe", 
            value: 1
        },
        {
            name: "Help", 
            value: 2
        },
        {
            name: "Exit", 
            value: 3
        }
    ]
end

# {
#     name: "Add/Delete a Recipe"
#     value: 4
# },
# {
#     name: "Saved Recipes"
#     value: 5
# },