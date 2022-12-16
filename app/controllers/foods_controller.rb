class FoodsController < ApplicationController
  def index
    @search_term = params[:q]
    @total_hits, @info = FoodFacade.food_search_results(@search_term)
  end
end
