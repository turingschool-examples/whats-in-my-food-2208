class FoodSearchResult
  attr_reader :keyword, :total_hits, :foods 
  
  def initialize(keyword, total_hits, foods)
    @keyword = keyword
    @total_hits = total_hits.to_i
    @foods = foods
  end
end