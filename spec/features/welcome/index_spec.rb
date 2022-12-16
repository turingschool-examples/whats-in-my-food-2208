require 'rails_helper'

RSpec.describe 'welcome index' do 
  it 'i fill in the form with sweet potatoes and click search' do 
    visit root_path
    fill_in(:q, with: "Sweet Potato") #this took me FAR too long. :(
    click_button("Search")

    expect(current_path).to eq(foods_path)
  end

  it 'i see a total number of items returned from my search' do 
    visit foods_path

    expect(current_page).to have_content(tmyUurfe2wJOKLnvfz4ldgjp9dpKcIGCDaaHXGaR)
  end
end