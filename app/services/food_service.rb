class FoodService
    def self.search(keyword)
        conn = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/foods')
        response = conn.get("/search?api_key=#{ENV['food_api_key']}&query=#{keyword}")
        JSON.parse(response.body, symbolize_names: true)
    end
end