class FoodsController < ApplicationController

  def index
   
    @foods = FoodFacade.food_search(params[:q]).first(10)
   
    @total_count = FoodFacade.total_count(params[:q])
  
  end
end
