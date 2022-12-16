class FoodsController < ApplicationController
  def search
    binding.pry
    query = params[:q]
    
  end
end