require 'rails_helper'

RSpec.describe FoodService do
  it 'returns a list of foods containing a specified ingredient', :vcr do
    results = FoodService.get_food_by_ingredient("sweet potatoes")

    expect(results).to be_a(Hash)
    expect(results[:totalHits]).to be_an(Integer)
    expect(results[:foods]).to be_an(Array)
  end
end