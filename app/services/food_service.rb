class FoodService
    def self.find_foods(search)
        response = conn.get("/fdc/v1/foods/search?query=#{search}")

        data = JSON.parse(response.body, symbolize_names: true)

    end

    def self.conn 
        Faraday.new(url: "https://api.nal.usda.gov") do |f|
            f.params["api_key"] = ENV["usda_api_key"]
        end
    end

end