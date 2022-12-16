require 'rails_helper'

RSpec.describe "welcome page" do
  describe "As a visitor" do
    it "I search for 'sweet potatoes'" do
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