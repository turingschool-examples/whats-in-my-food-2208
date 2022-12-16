class FoodService

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = "CLophkFKwv3XMxOISMBNhl5CnPEEV6hVwI5bdSG8"
  end

  def self.food_search(keyword)
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params[:query] = keyword
    end
    response = conn.get("/fdc/v1/foods/search?api_key=CLophkFKwv3XMxOISMBNhl5CnPEEV6hVwI5bdSG8")
    data = JSON.parse(response.body, symbolize_names: true)
    data[:results]
  end
end