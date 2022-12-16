require 'rails_helper'

RSpec.describe 'landing page' do
  it 'has a search form to search for foods by ingredient' do\
    json_response = File.read('spec/fixtures/search_foods.json')
    stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=oRpVuR5pLUwqBD1o0EzsiH4786HOVsg6Mom0jgMs&pageSize=10&query=sweet%20potatoes").
          to_return(status: 200, body: json_response)

    visit '/'
    fill_in(:q, with: "sweet potatoes")
    click_button "Search"
    expect(current_path).to eq('/foods')
  end
end
