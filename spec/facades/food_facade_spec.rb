require 'rails_helper'

RSpec.describe FoodFacade do 
  it 'returns food search data' do 
    search = FoodFacade.search_foods('sweet potatoes')

    expect(search).to be_a FoodSearchResult
    expect(search.total_hits).to be_a Integer
    expect(search.foods).to be_a Array
    expect(search.foods.first).to be_a Food
  end 
end