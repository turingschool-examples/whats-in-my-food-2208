class FoodFacade

  def self.search_foods(keyword)
    data = FoodService.food_search(keyword)
    binding.pry
    data[:foods].map { |food| Food.new(food)}
  end
end