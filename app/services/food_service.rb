class FoodService 
  def self.conn 
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = ENV["food_api_key"]
    end
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.food_search(food_item)
    get_url("/fdc/v1/foods/search?query=#{food_item}")
  end

end