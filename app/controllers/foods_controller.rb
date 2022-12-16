class FoodsController < ApplicationController
  def index
    @results = FoodFacade.results(params[:q])
  end
end
