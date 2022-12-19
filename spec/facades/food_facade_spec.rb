require 'rails_helper'

RSpec.describe FoodFacade do
  before do
    @food_facade = FoodFacade.new('sweet potatoes')
  end
  describe 'instance methods' do
    describe '#find_food_by_params' do
      it 'returns array of food objects that match the search params', :vcr do
        expect(@food_facade.foods[2].brand).to eq("John W. Taylor Packing Co. Inc")
        expect(@food_facade.foods[3].brand).to eq("BAKO SWEET")
      end

      it 'updates the total search hits for that food item', :vcr do
        expect(@food_facade.total_hits).to eq(49083)
      end
    end
  end
end