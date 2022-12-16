require 'rails_helper'

RSpec.describe 'food search' do 
  describe 'as a visitor when i visit the root path' do 
    it 'i can search for an item', :vcr do 
      visit root_path
      fill_in (:q), with: "sweet potato"
      click_button "Search"
      expect(current_path).to eq('/foods')

      expect(page).to have_content("Description: SWEET POTATO")
      expect(page).to_not have_content("Description: CHEESE")

    end
  end
end