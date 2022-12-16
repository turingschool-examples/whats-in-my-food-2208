require 'rails_helper'

RSpec.feature "Welcome Page", type: :feature do
  describe 'search form' do
    it 'has a form that redirects to /foods when a query is submitted' do
      visit '/'
      fill_in 'q', with: 'sweet potatoes'
      click_button 'Search'

      expect(page).to have_current_path('/foods?utf8=%E2%9C%93&q=sweet+potatoes&commit=Search')
    end
  end
end
