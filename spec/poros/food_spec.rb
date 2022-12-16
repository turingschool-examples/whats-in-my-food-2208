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

  # describe 'class methods' do
  #   describe '#take_ten' do
  #     it 'returns only the first 10 results' do
  #       attributes = {
  #         fdcId: 451884,
  #         description: "SWEET POTATOES",
  #         lowercaseDescription: "sweet potatoes",
  #         dataType: "Branded",
  #         gtinUpc: "832298010009",
  #         publishedDate: "2019-04-01",
  #         brandOwner: "NOT A BRANDED ITEM",
  #         ingredients: ""}
  #       food_1 = Food.new(attributes)
  #       food_2 = Food.new(attributes)
  #       food_3 = Food.new(attributes)
  #       food_4 = Food.new(attributes)
  #       food_5 = Food.new(attributes)
  #       food_6 = Food.new(attributes)
  #       food_7 = Food.new(attributes)
  #       food_8 = Food.new(attributes)
  #       food_9 = Food.new(attributes)
  #       food_10 = Food.new(attributes)
  #       food_11 = Food.new(attributes)
  #       food_12 = Food.new(attributes)

  #       foods = [food_1, food_2, food_3, food_4, food_5, food_6, food_7, food_8, food_9, food_10, food_11, food_12]

  #       expect(foods.take_ten).to eq([food_1, food_2, food_3, food_4, food_5, food_6, food_7, food_8, food_9, food_10])
  #     end
  #   end
  # end
end