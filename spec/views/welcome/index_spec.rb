require 'rails_helper'
# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"



RSpec.describe 'Welcome Page' do
    it 'user can search for ingredients' do
        visit root_path

        fill_in :q, with: 'sweet potatoes'
        click_button 'Search'

        expect(page.status_code).to eq 200
        expect(current_path).to eq('/foods')
    end
end