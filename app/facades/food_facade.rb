require_relative '../services/food_service'
require_relative '../poros/food'

class FoodFacade
  def self.search(query)
    json = FoodService.food_search(query)
    foods = json[:foods].first(10).map do |food|
      Food.new(food[:fdcId], food[:description], food[:brandOwner], food[:ingredients])
    end
    { totalHits: json[:totalHits], results: foods }
  end
end
