require 'pry'
require 'faraday'

class FoodDetailsService
  def conn
    response = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods", params: { api_key: })
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def search(input)
    response = conn.get("#{input}")
    binding.pry
    q
  end

  def keyword_search(input)
    search("search?query=#{input}")
  end
end