class FoodFacade
  def self.get_foods_with(ingredient)
    json = FoodService.get_foods_with(ingredient)
    Search.new(json)
  end
end