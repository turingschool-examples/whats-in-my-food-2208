class FoodsController < ApplicationController
  def search
    @foods = FoodFacade.search_foods_by_keyword(params[:query])
  end
end