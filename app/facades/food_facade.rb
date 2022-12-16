class FoodFacade
  def self.get_foods_with(ingredient)
    json = FoodService.get_foods_with(ingredient)
  
    json[:foods].take(10).map {|food| Food.new(food)}
  end
end