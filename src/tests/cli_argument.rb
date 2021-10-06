describe "CLI help command" do 
    context "check the CLI argument" do
        cli_arg = "-h"

        it "should output help menu if CLI argument is -h" do
            if cli_arg == "-h"
                expect(cli_arg).to eq("-h")
                puts "help menu"
            end
        end
    end
end