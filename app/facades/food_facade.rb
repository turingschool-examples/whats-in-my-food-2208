class FoodFacade 
  def self.find_food(query)
    data = FoodService.find_foods(query)
    data[:foodSearchCriteria].map do |food_data|
      # Food.new(food_data)
      require 'pry'; binding.pry
    end
  end
end