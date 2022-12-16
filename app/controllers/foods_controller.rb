class FoodsController < ApplicationController
  def index
    @search = FoodFacade.find_food(params[:q])
     #@total_count = FoodFacade.total_count(params[:q]) once I get past the search issue
  end

    def search
    @search = params[:q]
  end
end