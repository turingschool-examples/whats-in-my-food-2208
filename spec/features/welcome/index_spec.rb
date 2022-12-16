require 'rails_helper'

RSpec.describe 'welcome path' do 
  describe 'when I visit welcome and fill in the search form and click search' do 
    it "redirects me to a /food page" do
      visit root_path
      fill_in(:q, with: "sweet potato")
    
      click_button("Search")
      expect(current_path).to eq("/foods")
    end
  end
end