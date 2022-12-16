class FoodsController < ApplicationController
  def search
    @foods = if params[:q].present?
      UsdaService.food_search(params[:q])
    end
  end
end
