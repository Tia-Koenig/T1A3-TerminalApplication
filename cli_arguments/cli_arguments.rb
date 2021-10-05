require_relative "../utility_methods/display_message.rb"
require_relative "../messages/help_message.rb"

def help_cli_argument
    return display_message(help_message())
end