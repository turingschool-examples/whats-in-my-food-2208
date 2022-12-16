require 'rails_helper'

RSpec.describe 'Food search page', :vcr, type: :feature do
  describe 'As a user,' do
    describe 'When I visit "/"' do
      context 'And I fill in the search form with "sweet potatoes"' do
        it 'Then I should be on page "/foods"' do
          expect(page).to have_field('q')
          expect(page).to have_button('Search')

          fill_out 'q', with: 'sweet potatoes'

          click_button 'search'

          expect(current_path).to eq(foods_search_path)
        end

        it 'Then I should see a total of the number of items returned by the search.' do
          expect(page).to have_x
          expect(page).to have_x
          expect(page).to have_x
        end

        it 'Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"' do
          expect(page).to have_x
          expect(page).to have_x
          expect(page).to have_x
        end

        context 'And for each of the foods I should see:' do
          it "The food's GTIN/UPC code" do
            expect(page).to have_x
          end

          it "The food's description" do
            expect(page).to have_x
          end

          it "The food's Brand Owner" do
            expect(page).to have_x
          end

          it "The food's ingredients" do
            expect(page).to have_x
          end
        end
      end
    end
  end
end