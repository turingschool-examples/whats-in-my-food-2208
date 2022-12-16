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
          expect(page).to have_content('Total Number of Items: 49083')
        end
        it 'I see a list of 10 foods that contain the ingredient "sweet potatoes"' do
          expect(page).to have_content('Description: SWEET POTATOES', count: 10)
        end

        it "I see each food's GTIN/UPC code, description, Brand Owner, and ingredients" do
          within "#food_description_451884" do
            expect(page).to have_content("Description: SWEET POTATOES")
            expect(page).to have_content("GTIN/UPC Code: 832298010009")
            expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
            expect(page).to have_content("Ingredients:")
          end
        end
      end
    end
  end
end