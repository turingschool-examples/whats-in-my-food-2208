class Food 


  def initialize(data)
    @total = data[:totalHits]
    @gtin = data[:foods].first[:gtinUpc]
  end
end