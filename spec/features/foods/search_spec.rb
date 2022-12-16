require 'rails_helper'

RSpec.describe 'Food search page', :vcr, type: :feature do
  describe 'As a user,' do
    describe 'When I visit "/"' do
      context 'And I fill in the search form with "sweet potatoes"' do
        before(:each) do
          visit '/'
          expect(page).to have_field('q')
          expect(page).to have_button('Search')
  
          fill_in 'q', with: 'sweet potatoes'
  
          click_button 'Search'
        end

        it 'Then I should be on page "/foods"' do
          expect(current_path).to eq(foods_path)
        end

        it 'Then I should see a total of the number of items returned by the search.' do
          expect(page).to have_selector('#result-count')
          count = page.find('#result-count')
          expect(count).not_to match(/\D/)
          expect(count.text.to_i).to be >= 30_000
        end

        it 'Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"' do
          expect(page).to have_selector('#results-table')
          within '#results-table' do
            expect(page).to have_selector('.food')
            page.assert_selector(:css, '.food', count: 10)
          end
        end

        context 'And for each of the foods I should see:' do
          let!(:first) do
            within '#results-table' do
              page.find('.food', match: :first)
            end
          end

          it "The food's GTIN/UPC code" do
            expect(first).to have_selector('.code')
            expect(first.find('.code').text).not_to match(/\D/)
          end

          it "The food's description" do
            expect(first).to have_selector('.description')
            expect(first.find('.description').text).to be_a(String)
          end

          it "The food's Brand Owner" do
            expect(first).to have_selector('.owner')
            expect(first.find('.owner').text).to be_a(String)
          end

          it "The food's ingredients" do
            expect(first).to have_selector('.ingredients')
            expect(first.find('.ingredients').text).to be_a(String)
            expect(first.find('.ingredients').text.split(', ')).to be_a(Array)
          end
        end
      end
    end
  end
end
