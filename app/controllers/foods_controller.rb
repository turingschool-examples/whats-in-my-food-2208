class FoodsController < ApplicationController 

  def search 
    @facade = FoodFacade.new(params[:q])
  end
end