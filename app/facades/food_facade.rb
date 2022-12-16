class FoodFacade
  def initialize(params = nil)
    @params = params
    @service = FoodService.new
  end

  def find_food_by_params
    json = @service.find_food_by_name(@params)
    json[:foods].map do |food|
      Food.new(food)
    end
  end
end