require 'rails_helper'

RSpec.describe 'landing page' do
  it 'has a search form to search for foods by ingredient' do
    visit '/'
    fill_in(:q, with: "sweet potatoes")
    click_button "Search"
    expect(current_path).to eq('/foods')
  end
end
