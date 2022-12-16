class FoodFacade

  def self.search_foods(keyword)
    data = FoodService.food_search(keyword)
    limit_10 = data[:foods][0..10]
    limit_10.map { |food| Food.new(food)}
  end
end