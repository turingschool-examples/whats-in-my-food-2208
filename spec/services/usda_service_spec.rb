require 'rails_helper'

describe UsdaService do
  it 'exists' do
    usda = UsdaService.new

    expect(usda).to be_an_instance_of(UsdaService)
  end

  describe "class methods" do
    describe "#food_search" do
      it "returns foods based off of ingredients query" do
        input= "foie gras"
        # binding.pry
        expect(UsdaService.food_search(input)).to be_a Hash
      end
    end
  end
end
