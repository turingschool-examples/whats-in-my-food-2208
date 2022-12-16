class Food 
  attr_reader :total, 
              :gtin, 
              :description, 
              :owner


  def initialize(data)
    @total = data[:totalHits]
    @gtin = data[:gtinUpc]
    @description = data[:description]
    @owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end