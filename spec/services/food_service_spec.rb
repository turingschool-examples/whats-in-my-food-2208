require 'rails_helper' 

describe FoodService do 
  describe 'returns food data' do 
    it 'returns data and total hits for a searched food item', :vcr do 
      food = FoodService.food_search("sweet potato")
      expect(food).to be_a Hash 
      expect(food[:foods]).to be_an Array 
    end
  end
end