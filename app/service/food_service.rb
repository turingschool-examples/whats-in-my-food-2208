class FoodService
  def find_food_by_name(params)
    get_url("/fdc/v1/foods/search?query=#{params}")
  end

  def get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params['api_key'] = ENV['my_key']
      f.params['pageSize'] = '10'
      f.adapter Faraday.default_adapter
    end
  end
end