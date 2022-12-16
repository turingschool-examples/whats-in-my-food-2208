require 'rails_helper'

RSpec.describe Food do 
  it 'exists with attributes' do 
    data = { gtinUpc: 1097237, description: 'a food' }

    food = Food.new(data)
    expect(food).to be_a Food
    expect(food.upc).to eq(1097237)
    expect(food.description).to eq('a food')
  end
end