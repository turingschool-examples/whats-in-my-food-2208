require 'rails_helper'

describe "food facade" do
  it "returns number of results for search" do
    data = FoodFacade.total_results('sweet potatoes')

    expect(data).to be_an(Integer)
    expect(data).to be > 30000 #number of results may change in future
  end

  it "returns data for searched item" do
    data = FoodFacade.top_10_results('sweet potatoes')

    expect(data).to be_an(Array)
  end
end
