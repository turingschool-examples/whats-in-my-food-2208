require 'rails_helper'

RSpec.describe Food do
  it 'exists and has attributes' do
    data = { gtinUpc: "8675309",
             description: "FREEZE DRIED SWEETPOTATO",
             brandOwner: "A Farm",
             ingredients: "ORGANIC SWEETPOTATOS." 
            }
    
    food = Food.new(data)

    expect(food).to be_a(Food)
    expect(food.code).to eq("8675309")
    expect(food.description).to eq("FREEZE DRIED SWEETPOTATO")
    expect(food.brand).to eq("A Farm")
    expect(food.ingredients).to eq("ORGANIC SWEETPOTATOS.")
  end
end