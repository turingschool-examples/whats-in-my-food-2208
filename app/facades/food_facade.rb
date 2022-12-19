class FoodFacade
  attr_reader :total_hits
  def initialize(params = nil)
    @params = params
  end

  def results
    @_results ||= service.search(@params)
  end

  def foods
    results[:foods].map do |food|
      Food.new(food)
    end
  end

  def total_hits
    results[:totalHits]
  end

  def service
    @_service ||= FoodService.new
  end
end