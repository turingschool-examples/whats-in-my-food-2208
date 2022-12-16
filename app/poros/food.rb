class Food
  attr_reader :description, :gtin_upc, :brand_owner, :ingredients

  def initialize(attributes)
    @description = attributes[:description]
    @gtin_upc = attributes[:gtinUpc]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end

  # def take_ten
  #   require 'pry'; binding.pry
  #   take(10)
  # end

  # def total_count
  #   count
  # end
end