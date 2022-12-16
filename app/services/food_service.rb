class FoodService
  def find_food(input)
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.headers["X-API-KEY"] = "xISxGZSXprkP9YkUCjgzm1nLtO77TgoVQtIvXgwN"
      faraday.params["query"] = "#{input}"
      faraday.params["limit"] = "10"
    end

    response = conn.get("foods/search")
    
    JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry
  end

end