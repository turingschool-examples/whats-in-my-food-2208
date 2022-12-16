require 'faraday'

class FoodService
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.food_search(query)
    response = FoodService.conn.get("foods/search?query=#{query}&api_key=#{ENV["food_api_key"]}")
    JSON.parse(response.body, symbolize_names: true)
  end
end