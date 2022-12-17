require 'rails_helper'

RSpec.describe 'food results' do
  describe 'after searching for food' do
    it ' displays the foods information ' do
      visit root_path

      fill_in 'q', with: 'sweet potato'
      click_button 'Search'

      expect(current_path).to eq(foods_path)
      
      expect(page).to have_content(@foods)
    end

    it 'takes me to /foods where I see a list of ten foods that contain my search item' do
      visit '/foods'

      expect(current_path).to eq('/foods')
    end
  end
end
