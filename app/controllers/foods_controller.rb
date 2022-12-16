class FoodsController < ApplicationController
    def search
        @foods = FoodFacade.search_food(params[:q])
        @search_count = FoodFacade.search_count(params[:q])
    end
end
