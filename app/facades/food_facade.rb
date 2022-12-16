class FoodFacade
    def self.find_food(search)
        binding.pry
      data = FoodService.find_food(search)  
    end
end