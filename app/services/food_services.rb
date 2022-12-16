class FoodServices
  def search_food(food = nil)
    get_url("/fdc/v1/foods/search?query=#{food}" )
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers['X-Api-Key'] = ENV['X-Api-Key']
    end
  end
end
