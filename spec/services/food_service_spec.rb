require 'rails_helper'

RSpec.describe FoodService do
  describe 'class methods' do
    describe '#food_finder' do
      it 'returns foods with that ingredient' do
        foods = FoodService.food_finder("sweet potatoes")

        expect(foods).to be_a(Hash)
        expect(foods[:foods]).to be_an(Array)

        food = foods[:foods][0]

        expect(food).to have_key(:fdcId)
        expect(food[:fdcId]).to be_an(Integer)
        
        expect(food).to have_key(:description)
        expect(food[:description]).to be_an(String)
        
        expect(food).to have_key(:gtinUpc)
        expect(food[:gtinUpc]).to be_an(String)
        
        expect(food).to have_key(:brandOwner)
        expect(food[:brandOwner]).to be_an(String)
        
        expect(food).to have_key(:ingredients)
        expect(food[:ingredients]).to be_an(String)
      end
    end
  end
end