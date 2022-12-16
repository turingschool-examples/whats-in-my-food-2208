class FoodFacade
  def self.food_search(ingredient)
    FoodService.get_food_search(ingredient)[:foods].first(10).map do |food|
      Food.new(food)
    end
  end
end
