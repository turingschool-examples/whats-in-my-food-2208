class FoodSearchResult
  attr_reader :total_hits, :foods 
  
  def initialize(total_hits, foods)
    @total_hits = total_hits.to_i
    @foods = foods
  end
end