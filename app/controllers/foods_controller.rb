class FoodsController < ApplicationController
  def index
    @foods = FoodSearch.new.search_food(params[:q])
    require 'pry'; binding.pry
  end

  def show
  end
end
