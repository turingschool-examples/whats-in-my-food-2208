class FoodsController < ApplicationController
  def search
    @foods = FoodFacade.food_finder(params[:q])
    @count = FoodFacade.count_responses(params[:q])
  end
end