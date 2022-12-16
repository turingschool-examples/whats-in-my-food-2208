class FoodFacade
  def self.search_foods(keyword)
    data = UsdaService.food_search(keyword)
    # {
    #   total_hits: data[:totalHits],
    #   foods: create_foods(data[:foods])
    # }

    FoodSearchResult.new(data[:totalHits], create_foods(data[:foods]))
  end 

  def self.create_foods(data)
    data.map do |food_info|
      Food.new(food_info)
    end
  end
end