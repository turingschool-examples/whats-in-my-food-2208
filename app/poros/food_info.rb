class FoodInfo
    attr_reader :code,
                :description,
                :brand,
                :ingredients
                
    def initialize(data)
        @description = data[:description]
        @code = data[:gtinUpc]
        @brand = data[:brandOwner]
        @ingredients = data[:ingredients]
    end
end