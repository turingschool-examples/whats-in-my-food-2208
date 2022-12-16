class FoodsSearchController < ApplicationController
  def index
    @foods = FoodFacade.food_search(params[:q].gsub(/\s+/, ''))
  end
end
