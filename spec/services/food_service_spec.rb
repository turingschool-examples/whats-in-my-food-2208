require 'rails_helper' 

describe FoodService do 
  describe 'returns food data' do 
    it 'returns data and total hits for a searched food item', :vcr do 
      food = FoodService.food_search("sweet potato")
      expect(food).to be_a Hash 
      expect(food[:foods]).to be_an Array 
      first_food = food[:foods].first 

      expect(first_food[:description]).to be_a(String)
      expect(first_food[:fdcId]).to be_a(Integer)
      expect(first_food[:brandOwner]).to be_a(String)
      expect(first_food[:ingredients]).to be_a(String)

    end
  end
end