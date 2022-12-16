require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    attributes = {
      fdcId: 451884,
      description: "SWEET POTATOES",
      lowercaseDescription: "sweet potatoes",
      dataType: "Branded",
      gtinUpc: "832298010009",
      publishedDate: "2019-04-01",
      brandOwner: "NOT A BRANDED ITEM",
      ingredients: ""}

    food = Food.new(attributes)

    expect(food).to be_instance_of(Food)
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.gtin_upc).to eq("832298010009")
    expect(food.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(food.ingredients).to eq("")
  end
end