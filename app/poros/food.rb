class Food 
  attr_reader :upc,
              :brand,
              :ingredients,
              :description

  def initialize(info)
    @upc = info[:gtinUpc]
    @brand = info[:brandOwner]
    @ingredients = info[:ingredients]
    @description = info[:description]
  end
end