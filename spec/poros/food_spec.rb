require 'rails_helper'

RSpec.describe Food do 
  it "exists" do 
    attrs = {
      description: "sweet potato",
      fdc_id: 1234,
      brand_owner: "steve",
      ingredients: "lots of stuff"
    }

    food_item = Food.new(attrs)
    expect(food_item).to be_a Food 
    expect(food_item.description).to eq("sweet potato")


  end
end