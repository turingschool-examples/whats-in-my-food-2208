class FoodFacade
    def self.search(keyword)
        data = FoodService.search(keyword)[:foods]
        limit_10 = data[0..10]
        limit_10.map { |food| Food.new(food)}
    end

    def self.search_results(keyword)
        data = FoodService.search(keyword)[:totalHits]
    end
end