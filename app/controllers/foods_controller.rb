class FoodsController < ApplicationController
  def index
    binding.pry
    @foods = FoodFacade.find_food(params[:q])
    @total_count = FoodFacade.total_count(params[:q])
  end
end