class Food
  attr_reader :gtin,
              :description,
              :brand_owner,
              :ingredients
  def initialize(hash)
    @gtin = hash[:fdcId]
    @description = hash[:description]
    @brand_owner = hash[:brandOwner]
    @ingredients = hash[:ingredients]
  end
end