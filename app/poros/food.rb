class Food 
  attr_reader :id, :name, :ingredients, :brand_owner, :upc
  
  def initialize(data)
    @id = data[:fdcId]
    @name = data[:description]
    @ingredients = data[:ingredients]
    @brand_owner = data[:brandOwner]
    @upc = data[:gtinUpc]
  end
end 