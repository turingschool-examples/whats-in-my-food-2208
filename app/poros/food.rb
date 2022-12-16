class Food
  attr_reader :id,
              :description,
              :brandOwner,
              :ingredients

  def initialize(code, description, brandOwner, ingredients)
    @id = code
    @description = description
    @brandOwner = brandOwner
    @ingredients = ingredients.split(', ')
  end

  def ingredients_list
    ingredients.join(', ')
  end
end
