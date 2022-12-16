class FoodsController < ApplicationController
  def search
    foods = FoodService.new.find_food(params[:q])
    require 'pry'; binding.pry
    @all_foods = foods[:foods]
    # require 'pry'; binding.pry
    @total_items = foods[:totalHits]

  end

end