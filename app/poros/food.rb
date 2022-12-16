class Food
    attr_reader :gtin_upc,
                :description,
                :brand_owner,
                :ingredients
    
    def initialize(data)
        @gtin_upc = data[:gtinUpc]
        @description = data[:lowercaseDescription]
        @brand_owner = data[:brandOwner].downcase
        @ingredients = data[:finalFoodInputFoods]
    end
end