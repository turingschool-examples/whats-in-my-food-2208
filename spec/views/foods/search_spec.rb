require 'rails_helper'
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
RSpec.describe 'Foods Search Page' do
    it 'displays total number of items returned by the search' do
        visit root_path

        fill_in :q, with: 'sweet potatoes'
        click_button 'Search' 

        expect(page).to have_content('49083 results found')
    end

    xit 'lists ten foods that contain the searched ingredient' do
        visit root_path

        fill_in :q, with: 'sweet potatoes'
        click_button 'Search'  

    end

    it "displays each food's GTIN/UPC code, description, brand owner, and ingredients" do
        visit root_path

        fill_in :q, with: 'sweet potatoes'
        click_button 'Search' 

        expect(page).to have_content('sweet potatoes')
        expect(page).to have_content('not a branded item')
        expect(page).to have_content('832298010009')
    end 
end