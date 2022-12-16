class FoodsController < ApplicationController
  before_action :user_search
  
  def index
    @search = FoodFacade.get_foods_with(params[:q])
  end

  private

  def user_search
    @user_search = params[:q]
  end
end