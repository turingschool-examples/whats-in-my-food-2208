class FoodsController < ApplicationController
  def search
    @foods = if params[:q].present?
      UsdaFacade.food_search(params[:q])
    end
  end
end
