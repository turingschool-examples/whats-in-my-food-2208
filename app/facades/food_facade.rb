class FoodFacade
  def self.food_search_results(search_term)
    results = FoodableService.search_foods(search_term)
    total_hits = results[:totalHits]

    info = results[:foods].map do |food_info|
      Food.new(food_info)
    end

    [total_hits, info]
  end
end
