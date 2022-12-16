class FoodsController < ApplicationController 

  def search 
    @food_results = FoodFacade.search(params[:q])
  end
end