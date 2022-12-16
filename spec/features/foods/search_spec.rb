# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
require 'rails_helper'

describe "Food search page" do
  describe "As a user," do
    describe "when I visit '/'" do
      before :each do
        visit "/"


      end

      describe "And I fill in the form search with sweet potatoes" do
        describe "and I click search" do
          it "then I should be on page '/foods'" do

          end
        end
      end
    end
  end
end
