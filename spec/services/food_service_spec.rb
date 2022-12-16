require 'rails_helper'

RSpec.describe FoodService, :vcr do
  let(:search) { FoodService.search('sweet potatoes') }

  it 'establishes a connection for top rated movies', :vcr do
    expect(search).to be_a(Hash)

    expect(search[:totalHits]).to be_a(Integer)

    expect(search[:foods]).to be_a(Array)

    expect(search[:foods].first[:fdcId]).to be_a(Integer)
    expect(search[:foods].first[:description]).to be_a(String)
    expect(search[:foods].first[:brandOwner]).to be_a(String)
    expect(search[:foods].first[:ingredients]).to be_a(String)
  end
end
