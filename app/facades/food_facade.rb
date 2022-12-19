class FoodFacade 
  attr_reader :food_item 
  def initialize(food_item)
    @food_item = food_item
  end

  def results 
    @_results ||= FoodService.food_search(food_item)
  end

  def foods 
    results[:foods].first(10).map do |food|
      Food.new(food)
    end
  end

  def total_hits
    results[:totalHits]
  end

  # def self.search(food_item)
  #   FoodService.food_search(food_item)[:foods].map do |food|
  #     Food.new(food)
  #   end
  # end

  # def self.total_hits(food_item)
  #   FoodService.food_search(food_item)[:totalHits]
  # end
end