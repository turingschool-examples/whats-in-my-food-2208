require 'rails_helper'

RSpec.describe 'food results' do
  describe 'after searching for food' do
    it 'takes me to /foods where I see a list of ten foods that contain my search item' do
      visit "/foods"



      expect(current_path).to eq('/foods')
      expect(page).to have_content('Foods Containing Sweet Potatoes:')
    end
  end
end
