class FoodFacade
  attr_reader :total_hits
  def initialize(params = nil)
    @params = params
    @total_hits = nil
    @service = FoodService.new
  end

  def find_food_by_params
    json = @service.find_food_by_name(@params)
    @total_hits = json[:totalHits]
    json[:foods].map do |food|
      Food.new(food)
    end
  end
end