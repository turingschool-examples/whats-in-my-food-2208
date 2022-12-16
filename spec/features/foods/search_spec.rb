require 'rails_helper'

RSpec.feature "Foods Page", type: :feature do
  describe 'contents' do
    before :each do
      visit '/'
      fill_in 'q', with: 'sweet potatoes'
      click_button 'Search'
    end
    it 'has a count of total hits for the search' do
      expect(page).to have_content("Number of results: 49083")
    end
    it 'should have the GTN/UPC code of each food' do
      expect(page).to have_content("GTIN/UPC code: 832298010009")
    end
    it 'should have the description of each food' do
      expect(page).to have_content("Description: SWEET POTATOES")
    end
    it 'should have the brand owner of each food' do
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
    end
    it 'should list ten of the food results' do
      expect(page).to have_content("GTIN/UPC code:", count: 10)
    end
  end
end
