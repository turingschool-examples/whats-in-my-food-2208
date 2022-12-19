class FoodsController < ApplicationController
  def index
    @food_facade = FoodFacade.new(params[:q])
  end
end