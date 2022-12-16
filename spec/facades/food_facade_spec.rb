require 'rails_helper'

RSpec.describe FoodFacade, :vcr do
  describe '#search' do
    let(:sp_results) { FoodFacade.search('sweet potatoes') }

    it 'stores the total number of results' do
      expect(sp_results[:totalHits]).to be_a(Integer)
    end

    it 'creates a food poro for each result', :vcr do
      expect(sp_results[:results].first).to be_a(Food)
      expect(sp_results[:results].count).to <= 10
    end
  end
end
