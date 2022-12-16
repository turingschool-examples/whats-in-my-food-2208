require 'rails_helper'

RSpec.describe 'welcome index' do 
  it 'i fill in the form with sweet potatoes and click search' do 
    visit root_path
    fill_in(:q, with: "Sweet Potato") #this took me FAR too long. :(
    click_button("Search")

    expect(current_path).to eq(foods_path)
  end

  it 'i see a total number of items returned from my search' do 
    @foods = FoodFacade.find_food("Sweet Potato")
    visit foods_path

    expect(page).to have_content("Foods")
    save_and_open_page
  end
end