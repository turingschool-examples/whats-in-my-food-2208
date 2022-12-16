require 'rails_helper'

RSpec.describe 'foods search page' do
  context 'searching for foods by ingredient' do
    before :each do
      visit '/'
      fill_in(:q, with: "sweet potatoes")
      click_button "Search"
    end
    it 'displays the total number of returned items' do
      expect(page).to have_content("Total Items Returned: 49083")
    end
    it 'lists ten foods that contain the searched ingredient' do
      expect(page).to have_content("GTIN/UPC: 832298010009")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients: ")
    end
  end
end
