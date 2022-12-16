require 'rails_helper'

RSpec.describe Food do
  let!(:food) { Food.new(454004, "APPLE", "TREECRISP 2 GO", "FILTERED WATER, APPLE JUICE CONCENTRATE, ASCORBIC ACID (VITAMIN C).") }

  it 'attributes', :vcr do
    expect(food.id).to eq(454004)
    expect(food.description).to eq("APPLE")
    expect(food.brandOwner).to eq("TREECRISP 2 GO")
    # expect(food.ingredients).to be_a(Array)
    # expect(food.ingredients).to eq(["FILTERED WATER", "APPLE JUICE CONCENTRATE", "ASCORBIC ACID (VITAMIN C)."])
  end

  # describe '#ingredients_list' do
  #   it 'fuses ingred array back into string' do
  #     expect(food.ingredients_list).to eq("FILTERED WATER, APPLE JUICE CONCENTRATE, ASCORBIC ACID (VITAMIN C).")
  #   end
  # end
end
