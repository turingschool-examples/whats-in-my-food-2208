class FoodFacade

  def self.find_food(food_item)
    data = FoodService.find_food(food_item)
    data[:foods]
  end
end