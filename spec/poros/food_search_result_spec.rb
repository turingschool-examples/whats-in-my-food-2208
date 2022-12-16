require 'rails_helper'

RSpec.describe FoodSearchResult do 
  it 'exists with attributes' do 
    keyword = 'sweet potatoes'
    total_hits = 1000000 
    foods = ['food1', 'food2']
    object = FoodSearchResult.new(keyword, total_hits, foods)

    expect(object).to be_a FoodSearchResult
    expect(object.keyword).to eq(keyword)
    expect(object.total_hits).to eq(total_hits)
    expect(object.foods).to eq(foods)
  end 
end