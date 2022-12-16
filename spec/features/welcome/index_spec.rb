require 'rails_helper'

RSpec.describe "welcome page" do
  describe "As a visitor" do
    it "I search for 'sweet potatoes'" do
      json_response = File.read('spec/fixtures/foods.json')
      stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?limit=10&query=sweet%20potatoes").
      with(
        headers: {
       'Accept'=>'*/*',
       'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       'User-Agent'=>'Faraday v2.7.2',
       'X-Api-Key'=>'xISxGZSXprkP9YkUCjgzm1nLtO77TgoVQtIvXgwN'
        }).
      to_return(status: 200, body: json_response, headers: {})
      visit root_path

      expect(page).to have_link("Ingredient Search")
      expect(page).to have_button("Search")

      within("#bs-example-navbar-collapse-1") do
        fill_in(:q, with: "sweet potatoes")
        click_button "Search"
        expect(current_path).to eq("/foods")
      end
    end
  end
end