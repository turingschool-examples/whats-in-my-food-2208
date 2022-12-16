require 'rails_helper'

RSpec.describe 'the foods search page' do 
  before(:each) do 
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
  end

  it 'links from search bar in welcome page' do    
    expect(current_path).to eq('/foods')
  end

  it 'has a heading with search results' do 
    expect(page).to have_content("Showing 10 results out of 49083 for 'sweet potatoes'")
  end

  it 'shows all search results' do 
    within '#food-451884' do 
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("GTIN/UPC: 832298010009")
    end
  end
end 