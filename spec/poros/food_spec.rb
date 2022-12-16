require 'rails_helper'

RSpec.describe Food do
  it 'exists and has attributes' do
    data = { gtinUpc: "653341235244",
             description: "CINNAMON FREEZE DRIED SWEETPOTATO SLICES, CINNAMON",
             brandOwner: "A.M.S. Manufacturing, Inc.",
             ingredients: "ORGANIC SWEETPOTATO, ORGANIC VIRGIN COCONUT OIL, SEA SALT, ORGANIC CEYLON CINNAMON POWDER." 
            }
    
    food = Food.new(data)

    expect(food).to be_a(Food)
    expect(food.gtin_upc).to eq("653341235244")
    expect(food.description).to eq("CINNAMON FREEZE DRIED SWEETPOTATO SLICES, CINNAMON")
    expect(food.brand_owner).to eq("A.M.S. Manufacturing, Inc.")
    expect(food.ingredients).to eq("ORGANIC SWEETPOTATO, ORGANIC VIRGIN COCONUT OIL, SEA SALT, ORGANIC CEYLON CINNAMON POWDER.")
  end
end