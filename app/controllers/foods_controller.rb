class FoodController < ApplicationController

  def search
    search_params = params[:ingredient]
    food = Food.where("name ILIKE?", "%#{search_params}%")
  end
end