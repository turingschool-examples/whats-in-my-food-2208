class FoodsController < ApplicationController 

  def index 
    binding.pry
    @search_term = params[:q]
  end

  def search 

  end
end