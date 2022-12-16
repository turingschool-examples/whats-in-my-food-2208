class FoodsController < ApplicationController
    def search
        @foods = FoodFacade.search_food(params[:search])
    end
end
