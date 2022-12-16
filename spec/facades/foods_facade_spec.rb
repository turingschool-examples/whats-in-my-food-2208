require 'rails_helper'

RSpec.describe FoodsFacade do
  describe 'class methods' do
    describe '#foods_by_ingredient' do
      it 'returns 10 Food objects given the provided ingredient' do
        sweet_potatoes = FoodsFacade.foods_by_ingredient('sweet potatoes')

        expect(sweet_potatoes.size).to eq(10)
        sweet_potatoes.each do |food|
          expect(food).to be_a Food
        end
      end
    end
  end
end