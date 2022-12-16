require 'rails_helper'

RSpec.describe Food do
	before :each do
		@food1 = Food.new(fdcId: 1, gtinUpc: 123456768, description: "Sweet Potatoes", brandOwner: "Nature", ingredients: "Sweet Potato, duh")
	end

	it "exists" do
		expect(@food1).to be_a(Food)
	end

	it "has attributes" do
		expect(@food1.fdcid).to eq(1)
		expect(@food1.gtinupc).to eq(123456768)
		expect(@food1.description).to eq("Sweet Potatoes")
		expect(@food1.brand_owner).to eq("Nature")
		expect(@food1.ingredients).to eq("Sweet Potato, duh")
  end
end
