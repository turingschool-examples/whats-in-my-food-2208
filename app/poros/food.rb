class Food
  attr_reader :description, :gtinupc_code, :brand_owner, :ingredients 
  
  def initialize(data)
    @description = data[:description]
    @gtinupc_code = data[:gtinUpc]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end