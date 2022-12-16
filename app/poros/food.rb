class Food
  attr_reader :upc, :description, :brand_owners, :ingredients

  def initialize(food_info)
    @upc = food_info[:gtinUpc]
    @description = food_info[:description]
    @brand_owners = food_info[:brandOwner]
    @ingredients = food_info[:ingredients]
  end
end
