require 'rails_helper'

RSpec.describe 'welcome path' do 
  describe 'when I visit welcome and fill in the search form and click search' do 
    it "redirects me to a /food page" do
      visit '/'
      fill_in(:q, with: "sweet potato")
      save_and_open_page
      click_on("Search")
      expect(current_path).to eq("/foods")
    end
  end
end