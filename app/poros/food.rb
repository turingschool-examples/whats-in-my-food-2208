class food
  attr_reader :gtinupc,
              :description,
              :brand_owner,
              :ingredients
              
  def initialize(gtinupc, description, brand_owner, ingredients = [])
    @gtinupc = gtinupc
    @description = description
    @brand_owner = brand_owner
    @ingredients = ingredients
  end
end