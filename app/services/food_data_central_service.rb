class FoodDataCentralService
  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV['fcd_api_key']
    end
  end

  def self.ingredient_search(ingredient)
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}")
    JSON.parse(response.body, symbolize_names: true)
  end
end