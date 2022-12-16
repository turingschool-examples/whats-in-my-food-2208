require 'rails_helper'

RSpec.describe 'foods index page' do
  it 'returns foods that match the search criteria' do
    visit root_path

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq(foods_path)
    expect(page).to have_content(49083)
    expect(page).to have_css("ol li", count: 10)

    within("#foods") do
      expect(page).to have_content("832298010009")
      expect(page).to have_content("SWEET POTATOES")
      expect(page).to have_content("NOT A BRANDED ITEM")
    end
  end
end