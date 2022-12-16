class FoodService

    def self.connection
        Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
            faraday.params['api_key'] = ENV['food_api_key']
        end
    end

    def self.search_food(search)
        response = connection.get("/fdc/v1/foods/search?query=#{search}")

        data = JSON.parse(response.body, symbolize_names: true)
    end
end