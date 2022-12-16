class UsdaService
  def self.food_search(keyword)
    response = conn({query: keyword, pageSize: 10, api_key: ENV['usda_api_key'] }).get('fdc/v1/foods/search')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn(params) 
    Faraday.new(url: 'https://api.nal.usda.gov/', params: params)
  end
end