require 'rails_helper'

describe "As a user," do
  describe 'When I visit "/"' do
    before(:each) do
      visit root_path
    end
    describe 'And I fill in the search form with "sweet potatoes"' do
      before(:each) do
        fill_in :q, with: 'sweet potatoes'
      end
      describe 'And I click "Search"' do
        before(:each) do
          click_button "Search"
        end
        it 'Then I should be on page "/foods"' do
          expect(current_path).to eq('/foods')
        end

        it 'Then I should see a total of the number of items returned by the search.' do
          # (sweet potatoes should find more than 30,000 results)
          expect(page).to have_content("Number of Results")
          # save_and_open_page
        end

        it 'Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"' do

        end

        # it "And for each of the foods I should see:
        #   - The food's GTIN/UPC code
        #   - The food's description
        #   - The food's Brand Owner
        #   - The food's ingredients" do
        #
        #
        # end
      end
    end
  end
end
