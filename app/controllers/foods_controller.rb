class FoodsController < ApplicationController
  def index
    @total_results = FoodFacade.total_results(params[:q])
    @top_10_results = FoodFacade.top_10_results(params[:q])
  end
end
