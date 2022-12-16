class Food
  attr_reader :id, :description, :brand, :ingredients

  def initialize(data)
    @id = data[:gtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    # require "pry"; binding.pry
    assign_ingredients(data[:ingredients])
  end
  def assign_ingredients(ingredients)
    if ingredients == ""
      @ingredients = "N/A"
    else
      @ingredients = ingredients
    end
  end
end
