class FoodService
  def self.get_foods_with(ingredient)
    get_url("/fdc/v1/foods/search?query=#{ingredient}")
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.nal.usda.gov') do |f|
      f.headers['X-Api-Key'] = ENV['food_key']
    end
  end
end