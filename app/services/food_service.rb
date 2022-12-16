class FoodService
  def self.search_foods(food)
    response = conn.get("/fdc/v1/foods/search?query=#{food}")
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.params["api_key"] = ENV["food_api_key"]
    end
  end
end