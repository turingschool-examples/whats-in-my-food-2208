class FoodsController < ApplicationController
  def search
    @search_result = FoodFacade.search_foods(params[:q])
  end
end