require 'rails_helper'

RSpec.describe 'welcome path' do 
  describe 'when I visit welcome and fill in the search form and click search' do 
   it 'searchs for the food the user inputs and I am redirected to a food page with total number of items' do 
    visit root_path
    fill_in(:q, with: "sweet potato")
    click_on("Search")

    expect(current_path).to eq("?foods")
    
   end
 end
end