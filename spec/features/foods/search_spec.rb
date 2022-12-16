require 'rails_helper'

RSpec.describe 'Food ingredient search' do
  before :each do
    visit root_path
  end

  describe 'searching foods with ingredients' do
    it 'goes to food_search_path when a search is preformed' do
      expect(page).to have_field('q')
      expect(page).to have_button('Search')
      fill_in(:q, with: 'sweet potatoes')
      click_button('Search')

      expect(current_path).to eq(foods_search_path)
    end
  end
end
