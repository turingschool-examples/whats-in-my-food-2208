require "rails_helper"

RSpec.describe FoodFacade do 
  it "exists" do 
    search_term = "sweet potatoes"
    facade = FoodFacade.new(search_term)

    expect(facade).to be_an_instance_of(FoodFacade)
  end

  describe "instance methods" do 
    describe "#search_foods" do 
      it "returns both the total_results (an int, and an array of Food objects)" do 
        search_term = "sweet potatoes"
        facade = FoodFacade.new(search_term)

        expect(facade.search_foods).to be_an(Array)
        expect(facade.search_foods.count).to eq(2)

        total_results, foods = facade.search_foods

        expect(total_results).to be_an(Integer)
        expect(foods).to be_an(Array)
        foods.each do |food|
          expect(food).to be_an_instance_of(Food)
        end
        expect(foods.count).to eq(10)
      end
    end
  end
end