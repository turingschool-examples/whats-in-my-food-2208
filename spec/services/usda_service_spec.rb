require 'rails_helper'

RSpec.describe UsdaService do 
  it 'searches foods by keyword' do 
    search = UsdaService.food_search('sweet potatoes')

    expect(search).to be_a Hash 
    expect(search).to have_key(:totalHits) 
    expect(search).to have_key(:foods)
    expect(search[:foods].count).to eq(10)
  end
end