require 'rails_helper'

RSpec.describe 'welcome index' do
    describe 'as a visitor' do
        before :each do

        end

        it "When i fill in the search with 'sweet potatoes' then i should be on foods " do
            visit root_path
            fill_in "q", with: "Sweet Potatoes"
            click_button "Search"
            expect(current_path).to eq(foods_path)
        end

        it " displays code, description, brandower and ingredients " do
              visit root_path
            fill_in "q", with: "sweet potatoes"
            click_button "Search"
            expect(current_path).to eq(foods_path)

            # expect(page).to have_content(@foods[0])

        end
    end
end