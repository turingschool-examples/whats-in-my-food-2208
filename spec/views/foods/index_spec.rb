require 'rails_helper'

RSpec.describe 'foods index' do
  describe 'as a visitor' do
    describe "and I fill in the searh form with 'sweet potatoes' and click search" do
      before :each do
        visit '/'
        fill_in "q", with: "sweet potatoes"
        click_button 'Search'
      end
      it 'I should be on the page /foods' do
        expect(current_path).to eq('/foods')
      end

      xit 'Then I should see a total of the number of items returned by the search.' do
        expect(page).to have_content('Total Hits: 49083')
      end

      it 'Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"' do
        within("#foods") do
          expect(page).to have_content('Description: SWEET POTATOES')
          expect(page).to have_content('gtinUpc: 832298010009')
          expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
          expect(page).to have_content('Ingredients:')

          expect(page).to have_content('Description: SWEET POTATOES')
          expect(page).to have_content('gtinUpc: 819614010035')
          expect(page).to have_content('Brand Owner: BAKO SWEET')
          expect(page).to have_content('Ingredients:')
        end
      end
    end
  end
end