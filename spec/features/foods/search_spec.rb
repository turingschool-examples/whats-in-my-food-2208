require 'rails_helper'

RSpec.describe 'the foods search page' do 
  it 'links from search bar in welcome page' do
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
    
    expect(current_path).to eq('/foods')
  end
end 