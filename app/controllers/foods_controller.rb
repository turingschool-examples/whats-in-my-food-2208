class FoodsController < ApplicationController
  def index
    facade = FoodFacade.new(params[:q])
    @foods = facade.find_food_by_params
    @num_search_hits = facade.total_hits
  end
end