class FoodsController < ApplicationController 
  def search 

    @query = FoodFacade.find_food(params[:q])
  
  end
end