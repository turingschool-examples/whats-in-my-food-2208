require "rails_helper"

RSpec.describe "The foods index page (search results)" do 
  describe "As a user when I visit / and fill in the search for with a query and click search" do 
    it "redirects me to /foods" do 
      visit "/"

      fill_in(:q, with: 'sweet potatoes')
      click_button("Search")

      expect(current_path).to eq("/foods")
    end

    it "shows me the total number of items returned by the search, and ten foods" do 
      search_term = 'sweet potatoes'
      total_results, foods = FoodFacade.new(search_term).search_foods

      visit "/"

      fill_in(:q, with: search_term)
      click_button("Search")

      expect(page).to have_content("#{total_results} results found for search '#{search_term}'")
      foods.each do |food|
        within ".foods" do 
          expect(page).to have_content(food.description)
          expect(page).to have_content(food.gtinupc_code)
          expect(page).to have_content(food.brand_owner)
          expect(page).to have_content(food.ingredients) 
        end
      end
    end

    it "doesn't error if there are no results" do 
      search_term = "Amanda"
      total_results, foods = FoodFacade.new(search_term).search_foods

      visit "/"

      fill_in(:q, with: search_term)
      click_button("Search")

      expect(page).to have_content("0 results found for search '#{search_term}'")
      expect(page).to_not have_css(".foods")
    end
  end
end