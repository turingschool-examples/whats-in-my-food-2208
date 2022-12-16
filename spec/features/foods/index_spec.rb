require 'rails_helper'

describe 'The Foods Index Page' do
  context 'As a user' do
    describe 'When I visit the Welcome page' do
      describe 'I fill in the search form with "sweet potatoes" and click "Search"' do
        before :each do
          visit '/'

          fill_in :q, with: 'sweet potatoes'

          click_button 'Search'
        end

        it 'I am on the "/foods" page' do
          expect(current_path).to eq(foods_path)
        end
        it 'I see a total number of items returned by the search' do
          expect(page).to have_content('Total number of items: 49083')
        end
        it 'I see a list of 10 foods that contain the ingredient "sweet potatoes"'
        it "I see each food's GTIN/UPC code, description, Brand Owner, and ingredients"
      end
    end
  end
end