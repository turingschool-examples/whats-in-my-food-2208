class Food
  attr_reader :upc, :description, :brand, :ingredients
  def initialize(attributes)
    @upc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end