class FoodsController < ApplicationController
  def index
    @search_term = params[:q]
    @foods = FoodFacade.food_search_results(@search_term)
  end
end
