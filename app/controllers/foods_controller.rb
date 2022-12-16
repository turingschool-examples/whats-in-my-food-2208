class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.get_foods_with(params[:q])
  end
end