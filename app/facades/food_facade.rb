class FoodFacade 
  def self.search(food_item)
    FoodService.food_search(food_item)[:foods].map do |food|
      Food.new(food)
    end
  end

  def self.total_hits(food_item)
    FoodService.food_search(food_item)[:totalHits]
  end
end