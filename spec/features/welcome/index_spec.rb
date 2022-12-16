require 'rails_helper'

RSpec.describe 'Welcome Page', type: :feature do
  before do
    visit root_path
  end

  describe 'the search functionality' do
    it 'when I fill in the search form with sweet potatoes and click search, I should be on the foods path' do
      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'

      expect(current_path).to eq('/foods')
    end
  end
end