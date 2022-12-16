class FoodsController < ApplicationController
  def search
    query = params[:q]
    foods = FoodsFacade.new.food_results(query)
    binding.pry
  end
end