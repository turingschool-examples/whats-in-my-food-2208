require 'rails_helper'

RSpec.describe 'Landing Page' do 

  it "can fill in form with a 'sweet potatoes', hit search and redirect to '/foods' " do 
    visit root_path

    fill_in :q, with: 'sweet potatoes'

    click_on 'Search'

    expect(current_path).to eq("/foods")
  end

  xit 'I should seea  total of the number of items returned byt he search' do 
    search_term = 'sweet potatoes'
    

    fill_in :q, with: 'sweet potatoes'

    click_on 'Search'

    expect(page).to have_content("")

  end

end