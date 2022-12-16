class FoodFacade
    def self.food_search(food)
      data = FoodService.food_search(food)  
    end
end