class FoodsController < ApplicationController
  def index
    # require'pry';binding.pry
    @foods = FoodFacade.new(params[:q]).find_food_by_params
  end
end