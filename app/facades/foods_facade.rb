require './app/services/fdc_services'

class FoodsFacade
  def food_results(query)
    response = FdcService.new.food_search(query)
    foods_hash = response[:foods]
  end
end