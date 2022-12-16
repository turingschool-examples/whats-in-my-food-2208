class FoodsController < ApplicationController

  def index
    search_params = params[:q]
    @foods = FoodFacade.search_foods(search_params).limit(10)
    binding.pry
  end
end