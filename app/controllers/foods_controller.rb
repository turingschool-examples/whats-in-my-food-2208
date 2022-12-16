class FoodsController < ApplicationController
  def search
    foods = FoodFacade.find_foods(params[:food])
    # foods = FoodFacade.find_foods(params[:q])
  end
end