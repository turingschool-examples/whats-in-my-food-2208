class FoodsController < ApplicationController
  def search
    @query = params[:q]
    @foods = FoodFacade.search(params[:q])
    # require "pry"; binding.pry
  end
end
