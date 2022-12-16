class FoodsController < ApplicationController

  def index
    search_params = params[:q]
    @foods = FoodFacade.search_foods(search_params)
  end
end