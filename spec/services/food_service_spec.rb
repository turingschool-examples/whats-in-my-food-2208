require 'rails_helper'

describe 'food service' do
  it "gets total number results for searched item" do
    data = FoodService.total_results('sweet potatoes')

    expect(data).to be_an(Integer)
    expect(data).to be > 30000 #number of results may change in future
  end
  it "gets response of items from the API" do
    response = FoodService.top_10_results('sweet potatoes')

    expect(response).to be_an(Array)
    expect(response[0]).to have_key(:fdcId)
    expect(response[0]).to have_key(:description)
    expect(response[0]).to have_key(:brandOwner)
    expect(response[0]).to have_key(:ingredients)
  end
end
