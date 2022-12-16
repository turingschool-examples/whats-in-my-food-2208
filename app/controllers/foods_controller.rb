class FoodsController < ApplicationController
  def index
    @search = FoodFacade.get_foods_with(params[:q])
  end
end