class FoodsController < ApplicationController
  def search
    @hits = FoodDataCentralService.ingredient_search(params[:q])[:totalHits]
    @foods = FoodsFacade.foods_by_ingredient(params[:q])
  end
end
