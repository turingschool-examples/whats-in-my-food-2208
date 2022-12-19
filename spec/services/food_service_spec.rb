require 'rails_helper'

RSpec.describe FoodService do
  describe 'instance methods' do
    describe '#find_food_by_name' do
      it 'returns all foods as a JSON object', :vcr do
        all_foods = FoodService.new.search('sweet potato')
        expect(all_foods).to be_a(Hash)
        expect(all_foods[:foods]).to be_a(Array)

        one_result = all_foods[:foods].first

        expect(one_result).to have_key(:gtinUpc)
        expect(one_result[:gtinUpc]).to be_a(String)

        expect(one_result).to have_key(:description)
        expect(one_result[:description]).to be_a(String)

        expect(one_result).to have_key(:brandOwner)
        expect(one_result[:brandOwner]).to be_a(String)

        expect(one_result).to have_key(:ingredients)
        expect(one_result[:ingredients]).to be_a(String)
      end
    end

    describe '#get_url' do
      it 'returns JSON hash from response body', :vcr do
        url = FoodService.new.get_url("https://api.nal.usda.gov/fdc/v1/foods/search?query=Cheddar cheese")
        expect(url).to be_a(Hash)
      end
    end

    describe '#conn' do
      it 'connects with api.nal.usda.gov', :vcr do
        connection = FoodService.new.conn
        expect(connection.params).to be_a Hash
      end
    end
  end
end