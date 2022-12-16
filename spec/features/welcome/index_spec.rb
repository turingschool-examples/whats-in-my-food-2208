require 'rails_helper'

RSpec.describe 'welcome index' do 
  xit 'i fill in the form with sweet potatoes and click search' do 
    visit root_path
    fill_in("Ingredient Search", with: "Sweet Potato")
    click_button("Search")

    expect(current_path).to eq(foods_path)
  end

  it 'i see a total number of items returned from my search' do 
    visit foods_path

    expect(current_page).to have_content
  end
end