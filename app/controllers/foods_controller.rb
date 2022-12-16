class FoodsController < ApplicationController
  def search
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['food_api_key']
    end

    response = conn.get("/fdc/v1/foods/search?query=#{params[:q]}")

    @data = JSON.parse(response.body, symbolize_names: true)
    @foods = @data[:foods][0..9].map do |food_data|
      Food.new(food_data)
    end
  end
end