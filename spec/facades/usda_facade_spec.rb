require 'rails_helper'

RSpec.describe UsdaFacade do
  it 'exists' do
    usda = UsdaFacade.new

    expect(usda).to be_an_instance_of(UsdaFacade)
  end

  describe "class methods" do
    describe "#food_search" do
      it "creates a food object from usdaservice json" do
        ingredient = "Sweet Potatoes"

        expect(UsdaFacade.food_search(ingredient)).to be_a Array
        expect(UsdaFacade.food_search(ingredient).first).to be_a Food
      end
    end
  end
end
