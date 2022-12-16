require 'rails_helper'

describe 'The Foods Index Page' do
  context 'As a user' do
    describe 'When I visit the Welcome page' do
      describe 'I fill in the search form with "sweet potatoes" and click "Search"' do
        it 'I am on the "/foods" page'
        it 'I see a total number of items returned by the search'
        it 'I see a list of 10 foods that contain the ingredient "sweet potatoes"'
        it "I see each food's GTIN/UPC code, description, Brand Owner, and ingredients"
      end
    end
  end
end