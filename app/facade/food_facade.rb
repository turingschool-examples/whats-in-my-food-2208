class FoodFacade
  def self.food_search(ingredient)
    FoodService.get_food_search(ingredient)
  end
end
