class FoodsSearchController < ApplicationController
  def index
    @json = FoodFacade.food_search(params[:q])
    @food = food_results
    @total_hits = total_hits
  end

  private

  def food_results
    @json[:foods].first(10).map { |food| Food.new(food) }
  end

  def total_hits
    @json[:totalHits]
  end
end
