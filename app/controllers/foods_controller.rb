class FoodsController < ApplicationController 

  def index 
    @search_term = params[:q]
  end

  def search 

  end
end