class FoodService
  def self.get_food_search(ingredient)
    get_url("/fdc/v1/foods/search?query=#{ingredient}")
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.headers['X-Api-Key'] = ENV['usda_api_key']
      f.adapter Faraday.default_adapter
    end
  end
end
