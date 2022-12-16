class Food
  attr_reader :gtinupc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(foods)
    @gtinupc = foods[:gtinUpc]
    @description = foods[:description]
    @brand_owner = foods[:brandOwner]
    @ingredients = foods[:ingredients]
  end

end
