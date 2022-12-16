class FoodService
  def self.search_foods(food)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{food}&api_key=EKf0kYxFGfdWT9krX7fdAvRdO9gK1v19UIj8hJES")
    require 'pry'; binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end
end