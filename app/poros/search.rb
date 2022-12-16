class Search
  attr_reader :total_hits, :foods

  def initialize(data)
    @total_hits = data[:totalHits]
    @foods = data[:foods].take(10).map { |food| Food.new(food) }
  end
end
