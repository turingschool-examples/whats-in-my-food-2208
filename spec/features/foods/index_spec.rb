require 'rails_helper'

RSpec.describe 'food results', type: :feature do
  describe 'after searching for food' do
    it ' displays the foods information ' do
      visit root_path

      fill_in 'q', with: 'sweet potatoes'
      click_button 'Search'

      expect(current_path).to eq(foods_path)
      
      expect(page).to have_content(@foods)
      
    end

    it 'takes me to /foods where I see a list of ten foods that contain my search item' do
      visit root_path

      fill_in 'q', with: 'sweet potatoes'
      click_button 'Search'
      expect(current_path).to eq('/foods')
      
    # within(first('.food')) do 
      expect(page).to have_content("49083")
      expect(page).to have_content("code")
      expect(page).to have_content("description")
      expect(page).to have_content("brand:")
      expect(page).to have_content("ingredients:")
     #end
    end
  end
end
