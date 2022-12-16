class FdcService
  def food_search(query)
    get_url('/foods/search', {query: query})
  end

  def get_url(url, params = nil)
    response = connection.get(url, params)
    JSON.parse(response.body, symbolize_names: true) 
  end

  def connection
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1") do |faraday|
      faraday.params['api_key'] = ENV['fdc_key']
      faraday.params['language'] = 'en-US'
    end
  end
end