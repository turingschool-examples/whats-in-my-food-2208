class FoodsFacade
  def self.foods_by_ingredient(ingredient)
    json = FoodDataCentralService.ingredient_search(ingredient)

    json[:foods].first(10).map do |food_data|
      Food.new(food_data)
    end
  end
end