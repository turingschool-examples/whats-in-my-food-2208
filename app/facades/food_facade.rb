class FoodFacade

  def self.search_foods(keyword)
    data = FoodService.search_foods(keyword)
    limit_10 = data[0..10]
    limit_10.map { |food| Food.new(food)}
  end
end