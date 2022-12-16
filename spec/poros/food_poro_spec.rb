require 'rails_helper'

RSpec.describe Food do
  let(:food) { Food.new(id: 454004, description: "APPLE", brandOwner: "TREECRISP 2 GO", ingredients: "FILTERED WATER, APPLE JUICE CONCENTRATE, ASCORBIC ACID (VITAMIN C).") }

  it 'attributes', :vcr do
    expect(food.id).to eq(454004)
    expect(food.description).to eq("APPLE")
    expect(food.brandOwner).to eq("TREECRISP 2 GO")
    expect(food.ingrdients).to be_a(Array)
    expect(food.ingrdients).to eq(["FILTERED WATER", "APPLE JUICE CONCENTRATE", "ASCORBIC ACID (VITAMIN C)."])
  end

  describe '#ingredients_list' do
    it 'fuses ingred array back into string' do
      expect(food.ingrdients_list).to eq("FILTERED WATER, APPLE JUICE CONCENTRATE, ASCORBIC ACID (VITAMIN C).")
    end
end
