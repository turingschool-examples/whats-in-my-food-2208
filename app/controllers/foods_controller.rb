class FoodsController < ApplicationController 

  def index 
    @search_term = params[:q]
    @total_count, @info = FoodFacade.find_food_results(params[:q])
  end

 
end