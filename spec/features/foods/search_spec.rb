require 'rails_helper'

RSpec.describe 'food search' do 
  describe 'as a visitor when i visit the root path' do 
    it 'i can search for an item', :vcr do 
      visit root_path
      fill_in (:q), with: "sweet potato"
      click_button "Search"
      expect(current_path).to eq('/foods')
      expect(page).to have_content("Search Result Total: 49083")

      expect(page).to have_content("Description: SWEET POTATO")
      expect(page).to_not have_content("Description: CHEESE")

      expect(page).to have_content('Results for "sweet potato" search')
      expect(page).to have_content("FDC ID: 477475")
      expect(page).to have_content("Brand Owner: FRESH & EASY")
      expect(page).to have_content("Ingredients: SWEET POTATO, CHIPOTLE CHICKEN")
      expect(page).to have_content("Displaying 10 results")

      visit root_path
      fill_in (:q), with: "cheese"
      click_button "Search"
      expect(current_path).to eq('/foods')
      expect(page).to have_content("Search Result Total: 54391")
      expect(page).to have_content("Description: CHEESE")
      expect(page).to_not have_content("Description: SWEET POTATO")



    end
    
  end
end