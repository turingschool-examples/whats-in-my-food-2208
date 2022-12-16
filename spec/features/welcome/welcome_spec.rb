require 'rails_helper'

RSpec.describe 'welcome page' do 
  it "can search for sweet potatoes and reroute to '/foods' page" do 
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'
    expect(current_path).to be('/foods')
  end

  it 'has search results' do 
    visit '/foods'

    expect(page).to have_content('UPC:')
    expect(page).to have_content('Description:')
    expect(page).to have_content('Brand Name:')
    expect(page).to have_content('Ingredients:')
    expect(page).to have_content('Sweet Potatoes')
    expect(page).to have_content('49083')
    expect(page).to have_content('UPC: 492111402857')
    expect(page).to have_content('Brand: ARCHER FARMS')
    expect(page).to have_content('Ingredients: SWEET POTATOES')
    expect(page).to have_content('Description: SWEET POTATOES')
  end
end
