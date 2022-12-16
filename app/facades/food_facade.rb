class FoodFacade
  def self.search_foods_by_keyword(food)
    results = FoodService.search_foods(food)
  end
end