class FoodFacade 
  attr_reader :query

  def initialize(query)
    @query = query
  end

  def search_foods
    json = service.search_foods(@query)
    total_results = json[:totalHits]
    foods = json[:foods].map do |data|
              Food.new(data)
            end
    [total_results, foods]
  end

  def service 
    UsdaService.new
  end
end