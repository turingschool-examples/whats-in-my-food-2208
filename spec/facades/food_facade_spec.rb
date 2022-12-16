require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'instance methods' do
    describe '#find_food_by_params' do
      it 'returns array of food objects that match the search params', :vcr do
        expect(FoodFacade.new('sweet potatoes').find_food_by_params[2].brand).to eq("John W. Taylor Packing Co. Inc")
        expect(FoodFacade.new('sweet potatoes').find_food_by_params[3].brand).to eq("BAKO SWEET")
      end
    end
  end
end