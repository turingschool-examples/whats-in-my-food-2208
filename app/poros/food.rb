class Food
  attr_reader :id, :upc, :description, :brand_owner, :ingredients

  def initialize(data)
    binding.pry
    @id = data[:foods][:id]
    @upc = data[:foods][:gtinUpc]
    @description = data[:foods][:description]
    @brand_owner = data[:foods][:brandOwner]
    @ingredients = data[:foods][:ingredients]
  end
end