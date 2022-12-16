class FoodsController < ApplicationController
  def search
    @foods = FoodsFacade.foods_by_ingredient(params[:q])
  end
end
