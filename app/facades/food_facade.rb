class FoodFacade
    def self.food_search(search)
        data = FoodService.food_search(search)
        data[:foods].first(10).map do |food_data|
            FoodItem.new(food_data)
        end
    end
    
    def self.total_count(search)
        #binding.pry
        data = FoodService.food_search(search)
        data[:totalHits]
    end
end


