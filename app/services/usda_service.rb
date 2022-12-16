class UsdaService

  def self.conn
    Faraday.new("https://api.nal.usda.gov/fdc/v1/")
  end

  def self.endpoint_response(url)
    conn.get(url)
  end

  def self.food_search(input)
    response = endpoint_response("search?api_key=#{ENV['USDA_API_KEY']}&ingredients=#{input}")
    json = JSON.parse(response.body, symbolize_names: true)
    json[:foods].first(10)
  end
end
