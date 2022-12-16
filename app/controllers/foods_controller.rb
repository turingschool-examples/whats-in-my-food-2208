class FoodsController < ApplicationController
  def index
    @foods = FoodSearch.new.search_food(params[:q])
  end

  def show
  end
end
