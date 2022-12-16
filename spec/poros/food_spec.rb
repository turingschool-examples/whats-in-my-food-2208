require 'rails_helper'

RSpec.describe Food do
  it 'exists' do

    data =
    {
      gtinUpc: "728229015529",
      description: "SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY",
      brandOwner: "The Hain Celestial Group, Inc.",
      ingredients: "A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT."
    }

    food = Food.new(data)

    expect(food).to be_an_instance_of(Food)
  end

  it 'has readable attributes' do

    data = {
      gtinUpc: "728229015529",
      description: "SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY",
      brandOwner: "The Hain Celestial Group, Inc.",
      ingredients: "A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT."
    }

    food = Food.new(data)
    # binding.pry
    expect(food.gtinupc).to eq("728229015529")
    expect(food.description).to eq("SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY")
    expect(food.brand_owner).to eq("The Hain Celestial Group, Inc.")
    expect(food.ingredients).to eq("A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.")

  end
end
