class FoodFacade
    def self.search_food(search)
        data = FoodService.search_food(search)
        data[:pageList].map do |food_data|
            FoodInfo.new(food_data)
        end
    end
end