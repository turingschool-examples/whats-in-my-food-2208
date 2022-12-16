require 'rails_helper'

RSpec.describe 'Landing Page' do 

  it "can fill in form with a 'sweet potatoes', hit search and redirect to '/foods' " do 
    visit root_path

    fill_in :q, with: 'sweet potatoes'

    click_on 'Search'

    expect(current_path).to eq("/foods")
  end

  it 'I should seea  total of the number of items returned byt he search' do 
    food_item = 'sweet potatoes'

    total_count = 49083
    gtinUPC = 832298010009

    total_results, info_foods = FoodFacade.find_food_results(food_item)


    visit root_path
    

    fill_in :q, with: 'sweet potatoes'

    click_on 'Search'

    expect(page).to have_content("#{total_count} results found for search '#{food_item}")
    expect(page).to have_content("#{gtinUPC}")
    info_foods.each do |info_food|

      expect(page).to have_content(info_food.description)
      expect(page).to have_content(info_food.brand)
      expect(page).to have_content(info_food.ingredients)
    end
  end

end
# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients