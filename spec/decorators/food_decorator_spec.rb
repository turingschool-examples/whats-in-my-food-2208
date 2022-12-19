require 'rails_helper'

RSpec.describe FoodDecorator do
  describe 'instance methods' do
    describe '#foods?' do
      it 'returns a bool value of true if there were any food returns', :vcr do
        expect(FoodDecorator.new(FoodFacade.new('sweet potatoes')).foods?).to eq(true)
        expect(FoodDecorator.new(FoodFacade.new('xkcd')).foods?).to eq(false)
      end
    end
  end
end