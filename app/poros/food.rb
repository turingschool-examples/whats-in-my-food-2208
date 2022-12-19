class Food 
  attr_reader :description, :fdc_id, :brand_owner, :ingredients
  def initialize(attributes)
    @description = attributes[:description]
    @fdc_id = attributes[:fdcId]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end