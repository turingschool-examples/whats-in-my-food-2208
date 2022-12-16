class FoodFacade
  def self.search_foods_by_keyword(food)
    results = FoodService.search_foods(food)
    total_count = results[:totalHits]
    # require 'pry'; binding.pry
    foods = results[:foods].map do |food_info|
      Food.new(food_info)
    end
    [total_count, foods]
  end
end
