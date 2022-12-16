class FoodService
    def self.search(keyword)
        conn = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/foods') do |faraday|
          faraday.params[:query] = keyword
        end
        response = conn.get("/search?api_key=#{ENV['food_api_key']}")
        JSON.parse(response.body, symbolize_names: true)
    end
end