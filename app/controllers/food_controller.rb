class FoodController < ApplicationController
  def search
    @search_term = params[:q]
    @foods = FoodFacade.search(params[:q])
  end
end