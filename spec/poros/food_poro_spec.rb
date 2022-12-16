require 'rails_helper'

RSpec.describe Food do
  let(:food) { FoodFacade.x }

  it 'attributes', :vcr do
    expect(food.id).to eq(y)
    expect(food.x).to eq(y)
    expect(food.x).to be_a(y)
    expect(food.x).to eq(y)
  end
end
