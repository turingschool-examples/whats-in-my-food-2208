class FoodFacade
  def self.total_results(keyword)
    @total_results = FoodService.total_results(keyword)
  end

  def self.top_10_results(keyword)
    @top_10_results = FoodService.top_10_results(keyword)
  end
end
