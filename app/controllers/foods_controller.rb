class FoodsController < ApplicationController

  def search
    @foods = FoodFacade.food_search(params[:q])
    #@total_count = FoodFacade.total_count(params[:q])
  end
end
