require 'rails_helper'

RSpec.describe 'Foods Page', type: :feature do
  before do
    visit root_path
    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'
  end

  describe 'the search functionality' do
    it 'shows the total count of items returned by search' do
      expect(page).to have_content('Total Hits: 49083')
    end

    it 'shows a list of 10 items with ' do
      within '#food-list' do
        expect(page).to have_content('GTIN/UPC: 8901020020844')
        expect(page).to have_content('Description: SWEET POTATOES')
        expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
        expect(page).to have_content('Ingredients: ORGANIC SWEET POTATOES.')
      end
    end
  end
end