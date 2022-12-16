class UsdaFacade

  def self.food_search(ingredient)
    json = UsdaService.food_search(ingredient)

    @foods = json[:foods].first(10).map do |food|
      Food.new(food)
    end
  end

  def self.hits(ingredient)
    json = UsdaService.food_search(ingredient)
    json[:totalHits]
  end
end
