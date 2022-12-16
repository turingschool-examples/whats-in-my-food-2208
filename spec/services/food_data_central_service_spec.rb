require 'rails_helper'

RSpec.describe FoodDataCentralService do
  describe 'class methods' do
    describe '#ingredient_search' do
      it 'returns a JSON object of foods with the provided ingredient' do
        sweet_potatoes = FoodDataCentralService.ingredient_search('sweet potatoes')

        expect(sweet_potatoes[:foods]).to be_a Array
        expect(sweet_potatoes[:foods][0][:description]).to be_a String
        expect(sweet_potatoes[:foods][0][:gtinUpc]).to be_a String
        expect(sweet_potatoes[:foods][0][:brandOwner]).to be_a String
        expect(sweet_potatoes[:foods][0][:ingredients]).to be_a String
      end
    end
  end
end