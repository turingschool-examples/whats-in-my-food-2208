# require 'faraday'
# require './app/poros/food'

class FoodFacade
  def self.search(query)
    data = FoodService.search_foods(query)
    total_hits = data[:totalHits]
    foods = data[:foods].map do |food|
      Food.new(food)
    end
    foods_info = {total_hits: total_hits, foods: foods}
    # require "pry"; binding.pry
  end
end
