class Food
  attr_reader :gtinUpc, :description, :brandOwner, :ingredients

  def initialize(attributes)
    @gtinupc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brandowner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
