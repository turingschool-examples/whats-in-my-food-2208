class FoodFacade 
  def self.find_foods(ingredient)
    foods = FoodService.get_food_by_ingredient(ingredient)[:foods]
    foods.map do |data|
      Food.new(data)
    end
  end
end