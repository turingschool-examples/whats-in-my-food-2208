require './app/services/food_services'


class FoodSearch

  def search_food(food = nil)
    search_results = service.search_food(food)
    require 'pry'; binding.pry
  end


  def service
    FoodServices.new
  end
end