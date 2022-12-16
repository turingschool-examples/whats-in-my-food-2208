class FoodService
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params['api_key'] =  ENV['usda_api_key']
    end
  end

  def self.total_results(keyword)
    response = conn.get("foods/search?query=#{keyword}&dataType=Branded&pageSize=10&")
    output = JSON.parse(response.body, symbolize_names: :true)[:totalHits]
    # require "pry"; binding.pry
  end
end
