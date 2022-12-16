class FoodFacade
    def self.food_search(search)
      data = FoodService.food_search(search)  
    end
end