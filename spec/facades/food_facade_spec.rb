require 'rails_helper'

RSpec.describe FoodFacade do
  it 'returns an array of foods containing a specific ingredient', :vcr do
    foods = FoodFacade.find_foods("sweet potatoes")

    expect(foods.first).to be_a(Food)
  end
end