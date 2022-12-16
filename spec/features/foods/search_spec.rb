require 'rails_helper'

RSpec.describe 'Food ingredient search' do
  before :each do
    visit root_path
  end

  describe 'searching foods with ingredients' do
    it 'goes to food_search_path when a search is preformed' do
      expect(page).to have_field('q')
      expect(page).to have_button('Search')
      fill_in(:q, with: 'sweet potatoes')
      click_button('Search')

      expect(current_path).to eq(foods_search_path)
    end

    it 'shows total number of items returned by search' do
      fill_in(:q, with: 'sweet potatoes')
      click_button('Search')

      expect(page).to have_content('Total number of results: 49083')
    end

    it 'shows ten foods with their attributes' do
      fill_in(:q, with: 'sweet potatoes')
      click_button('Search')

      expect(page).to have_content('GTIN/UPC code: 832298010009')
      expect(page).to have_content('SWEET POTATOES')
      expect(page).to have_content('NOT A BRANDED ITEM')
      expect(page).to have_content('ORGANIC SWEET POTATOES.')
    end
  end
end
