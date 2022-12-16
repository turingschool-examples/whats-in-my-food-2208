class FoodsController < ApplicationController
    def search
        @keyword = params[:q]
        @results = FoodFacade.search_results(@keyword)
        @foods = FoodFacade.search(@keyword)
    end
end