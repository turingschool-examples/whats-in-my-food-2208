class FoodsController < ApplicationController

  def index
    @foods = FoodFacade.food_search(params[:q])
    @total_count = FoodFacade.total_count(params[:q])
    #binding.pry
  end
end
