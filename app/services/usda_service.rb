class UsdaService
  def search_foods(query)
    get_url("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['USDA_key']}&query=#{query}&pageSize=10")
  end

  def get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end