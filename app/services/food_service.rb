class FoodService

  def self.food_search(keyword)
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params[:q] = keyword
    end
    response = conn.get("/fdc/v1/foods/search?api_key=CLophkFKwv3XMxOISMBNhl5CnPEEV6hVwI5bdSG8")
    data = JSON.parse(response.body, symbolize_names: true)
  end
end