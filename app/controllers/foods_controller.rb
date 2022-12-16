class FoodsController < ApplicationController 

  def search 
    @food_results = FoodFacade.search(params[:q])
    # require 'pry'; binding.pry
  end
end