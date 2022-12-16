require 'rails_helper'

RSpec.feature "Welcome Page", type: :feature do
  describe 'search form' do
    it 'has a form that redirects to /foods when a query is submitted' do
      visit '/foods'
      save_and_open_page
    end
  end
end
