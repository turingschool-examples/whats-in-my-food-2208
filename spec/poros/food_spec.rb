require 'rails_helper'

RSpec.describe Food do
  it 'exists' do

    data =
    {
      gtinup: "728229015529",
      description: "SWEETS MEDLEY SEL GRIS, BATATA, SWEET POTATO, PURPLE SWEET POTATO REAL VEGETABLE CHIPS, SWEETS MEDLEY",
      brand_owner: "The Hain Celestial Group, Inc.",
      ingredients: "A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.",


    }

    food = Food.new(data)

    expect(food).to be_an_instance_of(Food)
  end
end
