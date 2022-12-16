class FoodsController < ApplicationController
  def search
    @food = params[:q]
    @total_count, @foods = FoodFacade.search_foods_by_keyword(@food)
  end
end