require "tty-prompt"

def menu_select(options)
    prompt = TTY::Prompt.new
    prompt.select("Please choose an option:", options)
end




