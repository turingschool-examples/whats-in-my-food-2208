class Food
  attr_reader :fdcid,
              :gtinupc,
              :description,
              :brand_owner,
              :ingredients
  
  def initialize(attributes)
    @fdcid = attributes[:fdcId]
    @gtinupc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end