require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'class methods' do
    describe '#food_finder' do
      it 'should create objects from JSON data given by the service' do
        expect(FoodFacade.food_finder("sweet potatoes")).to be_an(Array)
        expect(FoodFacade.food_finder("sweet potatoes")[0]).to be_instance_of(Food)
      end
    end
  end
end