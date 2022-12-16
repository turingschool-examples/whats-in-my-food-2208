class FoodsController < ApplicationController
  def search
    @total_results = FoodDetailsService.new.keyword_search(params[:q])[:totalHits]
    foods = FoodDetailsService.new.keyword_search(params[:q])[:foods][0..9]
    @food_details = foods.pluck(:gtinUpc, :description, :brand_owner, :ingredients)
    # [:gtinUpc] 
    # [:description]
    # [:brand_owner]
    # [:ingredients]
  end
end