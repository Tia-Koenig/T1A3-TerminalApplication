require "artii"

def welcome_message 
    welcome = Artii::Base.new
puts Rainbow(welcome.asciify('3   ingredient   cookbook !')).magenta
end