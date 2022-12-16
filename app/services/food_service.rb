class FoodService do
  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov')
  end

  def self.get_food_by_ingredient(ingredient)
    response = conn.get("/fdc/v1/foods/search?api_key=#{ENV['usda_api_key']}&query=#{ingredient}")
    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end