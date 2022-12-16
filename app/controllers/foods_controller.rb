class FoodsController < ApplicationController
  def search
    @food = params[:query]
    @total_count, @foods = FoodFacade.search_foods_by_keyword(@food)
  end
end