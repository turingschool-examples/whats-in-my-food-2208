require "rails_helper"

RSpec.describe "Foods Index Page" do
  
  it "should contain the total number of items returned by a search" do
    visit "/foods"

    fill_in :keyword, with: 'Sweet Potatoes'
        click_button('Find Top Rated Movies')
        expect(current_path).to eq(user_movies_path(@user1.id))


  end

  it "should have a list of no more than 10 foods that contain the search item" do

  end

  it "for each food listed, there should be the foods GTIN/UPC, description, Brand Owner, ingredients" do 
    
  end
end