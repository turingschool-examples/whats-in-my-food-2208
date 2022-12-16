require 'rails_helper'

RSpec.describe 'food search' do 
  describe 'as a visitor when i visit the root path' do 
    it 'i can search for an item' do 
      fill_in "Search", with: "sweet potato"
      click_button "Submit"
      expect(current_path).to eq('/foods')
      
    end
  end
end