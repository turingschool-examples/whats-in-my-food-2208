require "rails_helper"


RSpec.describe("Search for Quotes by keyword") do
  it("can fill in form with a keyword, hit submit and redirect to quotes index") do
    visit(root_path)
    fill_in(:q,     with: "sweet potatoes")
    click_on("Search")
    expect(current_path).to(eq("/foods"))
  end

  it("Then I should see a total of the number of items returned by the search.") do
    search_term = "sweet potatos"
    total_results, quotes = FoodFacade.food_search_results(search_term)
    visit(root_path)
    fill_in(:q,     with: search_term)
    click_on("Search")
    expect(page).to(have_content("#{total_results} results found from search #{search_term}"))
  end
end
