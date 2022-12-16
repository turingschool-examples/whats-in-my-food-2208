class FoodsController < ApplicationController 
  def search 

    @query = FoodFacade.find_food(params[:q])
    # require 'pry'; binding.pry
  end
end