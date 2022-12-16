require 'rails_helper'

RSpec.describe Food do
  before do
    attrs = {
      "gtinUpc": "1",
      "description": "a food",
      "brandOwner": "mega corp",
      "ingredients": "not food"
    }
    @food = Food.new(attrs)
  end

  it 'exists' do
    expect(@food).to be_a(Food)
  end

  it 'has a readible upc' do
    expect(@food.upc).to eq("1")
  end

  it 'has a readible description' do
    expect(@food.description).to eq("a food")
  end

  it 'has a readible brand' do
    expect(@food.brand).to eq("mega corp")
  end

  it 'has a readible ingredients' do
    expect(@food.ingredients).to eq("not food")
  end
end