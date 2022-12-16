require 'rails_helper'

RSpec.describe 'Welcome Index Page', type: :feature do
  before do
    visit root_path
  end
  describe 'When I visit / then' do
    describe 'I see a form to search for food items' do
      it 'with a text field and a "Search" button', :vcr do
        within '#bs-example-navbar-collapse-1' do
          expect(page).to have_button("Search")
        end
      end
      describe 'When I fill out the form and press "Search"' do
        before do
          within '#bs-example-navbar-collapse-1' do
            fill_in :q, with: 'sweet potatoes'
            click_button "Search"
          end
        end
        it 'I see a list of food items', :vcr do
          expect(current_path).to eq('/foods')
          within '#search-results' do
            expect(page).to have_content("Name: SWEET POTATOES")
            expect(page).to have_content("Brand: John W. Taylor Packing Co. Inc")
            expect(page).to have_content("UPC Code: 076700002019")
            expect(page).to have_content("Ingredients: SWEET POTATOES")
          end
        end

        it 'The list is a maximum of ten items', :vcr do
          expect(page).to have_content("Name", count: 10)
        end
      end
    end
  end
end