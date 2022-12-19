class FoodDecorator < SimpleDelegator
  def foods?
    !foods.empty?
  end
end