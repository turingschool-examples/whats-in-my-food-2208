class FoodFacade 
  def self.find_food(query)
    json = FoodService.find_foods(query)
    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end