require 'rails_helper'

RSpec.describe Food do
  describe 'initialize' do
    it 'has readable attributes' do
      data = {
        gitin_upc: '123',
        description: 'Some tasty food',
        brandOwner: 'Tyson',
        ingredients: 'Some sketchy stuff'
      }
      food = Food.new(data)

      expect(food.gtin_upc).to eq(data[:gtin_upc])
      expect(food.description).to eq(data[:description])
      expect(food.brand_owner).to eq(data[:brandOwner])
      expect(food.ingredients).to eq(data[:ingredients])
    end
  end
end