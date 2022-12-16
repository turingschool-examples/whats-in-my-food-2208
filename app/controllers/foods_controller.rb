class FoodsController < ApplicationController
  def search
    foods = FoodService.new.find_food(params[:q])
    @all_foods = foods[:foods]
    @total_items = foods[:totalHits]
  end

end