require 'rails_helper'

describe "Food search page" do
  describe "As a user," do
    describe "when I visit '/'" do
      before :each do
        visit "/"

        fill_in(:q, with: "Sweet Potatoes")
        click_button "Search"
      end

      describe "And I fill in the form search with sweet potatoes" do
        describe "and I click search" do
          it "then I should be on page '/foods'" do

            expect(current_path).to eq("/foods")
          end

          it "Then I should see a total of the number of items returned by the search." do

            expect(page).to have_content("Total results for SWEET POTATOES: ")
          end

          it "Then I should a list of 10 foods that contain sweet potatoes" do
            expect(page).to have_content("GTIN/UPC code:", count: 10)
          end

          it "And for each of the foods I should see: The food's GTIN/UPC code, The food's description, The food's Brand Owner, The food's ingredients" do

            expect(page).to have_content("GTIN/UPC code: ")
            expect(page).to have_content("Description: ")
            expect(page).to have_content("Brand Owner: ")
            expect(page).to have_content("Ingredients: ")
          end
        end
      end
    end
  end
end
