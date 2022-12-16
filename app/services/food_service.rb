class FoodService
  def self.food_finder(ingredient)
    response = connection.get("foods/search?query=#{ingredient}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.connection
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.headers["X-Api-Key"] = ENV['usda_api_key']
    end
  end
end