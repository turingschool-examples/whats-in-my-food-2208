require 'rails_helper'

RSpec.describe 'foods index page' do
  it 'returns foods that match the search criteria' do
    visit root_path

    fill_in :q, with: "sweet potatoes"

    expect(current_path).to eq(foods_path)
    expect(page).to have_content("832298010009")
    expect(page).to have_content("SWEET POTATOES")
    expect(page).to have_content("NOT A BRANDED ITEM")
  end
end