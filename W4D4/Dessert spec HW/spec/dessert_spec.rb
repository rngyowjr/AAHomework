require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name:"Kazu") }
  let(:mochi) {Dessert.new("mochi", 25, chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(mochi.type).to eq("mochi")
    end

    it "sets a quantity" do
      expect(mochi.quantity).to eq(25)
    end

    it "starts ingredients as an empty array" do
      expect(mochi.ingredients).to eq([])
    end 

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("mochi", "mucho", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      mochi.add_ingredient("red bean")
      expect(mochi.ingredients).to include("red bean")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      mochi.mix!
      expect(mochi.ingredients).not_to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
