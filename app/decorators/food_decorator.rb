class FoodDecorator < SimpleDelegator
  def foods?
    self.foods != nil
  end
end