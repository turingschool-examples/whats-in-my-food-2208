class FoodFacade
    def self.search_food(search)
        data = FoodService.search_food(search)
        data[:foods].map do |food_data|
            FoodInfo.new(food_data)
        end
    end

    def self.search_count(search)
        data = FoodService.search_food(search)
        data[:totalHits]
    end
end