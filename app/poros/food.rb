class Food 
  attr_reader :id, :description, :ingredients, :brand_owner, :upc
  
  def initialize(data)
    @id = data[:fdcId]
    @description = data[:description]
    @ingredients = data[:ingredients]
    @brand_owner = data[:brandOwner]
    @upc = data[:gtinUpc]
  end
end 