class FoodService 

  def self.search_foods(food_item)
    response = conn.get("/fdc/v1/foods/search?query=#{food_item}&limit=10")
   
    data= JSON.parse(response.body, symbolize_names: true)
    
  end


  def self.conn 
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params['api_key'] = ENV['food_key']
    end
  end
end