class FoodFacade

  def self.find_food_results(food_item)
    data = FoodService.search_foods(food_item)
    total_count = data[:totalHits]
    info = data[:foods].map do |food_info|
      Food.new(food_info)
    end
    [total_count, info ]
  end
end