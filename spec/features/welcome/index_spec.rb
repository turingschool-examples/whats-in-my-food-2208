require 'rails_helper'

RSpec.describe 'welcome index' do
    describe 'as a visitor' do
        before :each do

        end

        it "When i fill in the search with 'sweet potatoes' then i should be on foods " do
            visit root_path
            fill_in "q", with: "sweet potatoes"
            click_button "Search"
            expect(current_path).to eq(foods_path)
        end
    end
end