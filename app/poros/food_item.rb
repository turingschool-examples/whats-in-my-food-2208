class FoodItem
  
  attr_reader :upc_code, 
              :description,
              :brand, 
              :ingredients
  
  def initialize(data)
    @upc_code = data[:gtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end