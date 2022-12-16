require 'rails_helper'

RSpec.describe 'foods search page' do
  context 'searching for foods by ingredient' do
    before :each do
      json_response = File.read('spec/fixtures/search_foods.json')
      stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=oRpVuR5pLUwqBD1o0EzsiH4786HOVsg6Mom0jgMs&pageSize=10&query=sweet%20potatoes").
            to_return(status: 200, body: json_response)
            
      visit '/'
      fill_in(:q, with: "sweet potatoes")
      click_button "Search"
    end
    it 'displays the total number of returned items' do
      # save_and_open_page
      expect(page).to have_content("Total Items Returned: 49083")
    end
    it 'lists ten foods that contain the searched ingredient' do
      expect(page).to have_content("GTIN/UPC: 832298010009")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients: N/A")

      expect(page).to have_content("GTIN/UPC: 882495000013")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand: N&W Farm Produce Inc.")
      expect(page).to have_content("Ingredients: N/A")
    end
  end
end
