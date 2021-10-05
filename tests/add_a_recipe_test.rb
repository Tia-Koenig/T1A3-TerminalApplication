require "csv"

describe "add a recipe" do

    let(:recipe_hash) do
        return {title: "test recipe"}
    end 

    it "should check if the CSV file exists" do
        expect(File.exist?("./tests/test.csv")).to be true 
    end

    it "should add recipe hash to CSV file" do
        CSV.open("./tests/test.csv", "a+", :headers => recipe_hash.keys, write_headers: true) do |csv|
            csv << recipe_hash.values
        end
    end

    it "should have a recipe in it" do
        expect(File.read("./tests/test.csv")).to include "test recipe"
    end
end
