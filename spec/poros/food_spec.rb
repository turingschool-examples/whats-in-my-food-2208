require "rails_helper"

RSpec.describe Food do
  it "exists" do
    hash = JSON.parse(File.read("spec/fixtures/foods.json"), symbolize_names: true)
    first_food = hash[:foods][0]
    food1 = Food.new(first_food)

    expect(food1).to be_a Food
    expect(food1.gtin).to eq(451884)
    expect(food1.description).to eq("SWEET POTATOES")
    expect(food1.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(food1.ingredients).to eq("")
  end
end

 