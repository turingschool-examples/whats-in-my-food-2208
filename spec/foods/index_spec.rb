require "rails_helper"

RSpec.describe "Foods Index Page" do

  before(:each) do
    visit root_path
    fill_in :q, with: 'Sweet Potatoes'
    click_button('Search')
  end
  
  it "should contain the total number of items returned by a search" do
    
    expect(current_path).to eq("/foods")
    expect(page).to have_content("Total Number Of Results: 49083")
  end

  xit "should have a list of no more than 10 foods that contain the search item" do
    within("#foods-#{food1.id}")
    expect(page).to have_content("")
  end

  xit "for each food listed, there should be the foods GTIN/UPC, description, Brand Owner, ingredients" do 
    
  end
end