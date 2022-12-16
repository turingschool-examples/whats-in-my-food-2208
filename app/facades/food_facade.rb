class FoodFacade
  def self.food_finder(food)
    data = FoodService.food_finder(food)
    data[:foods].map do |food_info|
      Food.new(food_info)
    end
  end

  def self.count_responses(food)
    data = FoodService.food_finder(food)
    data[:totalHits]
  end
end