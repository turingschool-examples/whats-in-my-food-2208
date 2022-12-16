require './app/services/fdc_services'

class FoodsFacade
  def food_results(query)
    response = FdcService.new.food_search(query)
    foods_hash = response[:foods].first(10)
    foods_hash.map { |hash| Food.new(hash) }
  end
  def results_count(query)
    response = FdcService.new.food_search(query)
    response[:totalHits]
  end
end