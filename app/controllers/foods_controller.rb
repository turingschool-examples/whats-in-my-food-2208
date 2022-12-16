class FoodsController < ApplicationController
  def index
    require 'pry'; binding.pry
    @foods = FoodSearch.new.search_food(params[:q])
  end

  def show
  end
end
