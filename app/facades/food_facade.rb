class FoodFacade
  def self.results(keyword)
   @total = FoodService.total_results(keyword)
 end
end
