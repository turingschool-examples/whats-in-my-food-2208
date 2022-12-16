require 'rails_helper'

RSpec.describe "foods search function" do
  describe "When a visitor searches" do
    it 'returns foods that include the keyword' do
      json_response = File.read('spec/fixtures/foods.json')
      stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?limit=10&query=").
      with(
        headers: {
       'Accept'=>'*/*',
       'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       'User-Agent'=>'Faraday v2.7.2',
       'X-Api-Key'=>'xISxGZSXprkP9YkUCjgzm1nLtO77TgoVQtIvXgwN'
        }).
      to_return(status: 200, body: json_response, headers: {})
      
      visit foods_path("sweet potatoes")
      expect(page).to have_content("Total Hits:49083")
      expect(page).to have_content("GTIN Code:451884")
      expect(page).to have_content("Description:SWEET POTATOES")
      expect(page).to have_content("Brand Owner:NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients:")
    end
  end
end