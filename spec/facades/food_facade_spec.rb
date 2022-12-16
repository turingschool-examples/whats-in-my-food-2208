require "rails_helper"


RSpec.describe("Food facade") do
  it("food_search_results  and food object") do
    total_results, quotes = FoodFacade.food_search_results("sweet potatoes")
    expect(total_results).to(be_an(Integer))
    expect(quotes).to(be_an(Array))
  end
end
