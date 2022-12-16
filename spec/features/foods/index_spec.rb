require 'rails_helper'

RSpec.describe 'food index page' do
  describe 'as a user' do
    describe 'when I visit foods_path', :vcr do
      it 'shows the total number of items returned by the search' do
        visit root_path

        fill_in :q, with "sweet potatoes"
        click_button "Search"

        expect(current_path).to eq(foods_path)
        
        expect(page).to have_content("Search results for foods containing sweet potatoes")


      end
      
      it 'only shows a list of ten foods that contain the ingredient' do

      end

      it 'each food shows its GTIN/UPC code, its description, its brand owner, and its ingredients' do

      end
    end
  end
end