class FoodService
  def self.search_foods(query)
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = ENV['api_key']
      faraday.params["query"] = query
      faraday.params["pageSize"] = 10
    end

    response = conn.get("/fdc/v1/foods/search")

    data = JSON.parse(response.body, symbolize_names: true)
    # require "pry"; binding.pry
  end
end
