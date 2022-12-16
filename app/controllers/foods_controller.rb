class FoodsController < ApplicationController 

  def search 
    @food_results = FoodFacade.search(params[:q])
    @total_hits = FoodFacade.total_hits(params[:q])
  end
end