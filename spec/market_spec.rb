require './lib/item'
require './lib/vendor'
require './lib/market'
require 'pry'

RSpec.describe Market do 
  describe '#initialize' do
    it 'is a Market' do
      market = Market.new("South Pearl Street Farmers Market")  
      expect(market).to be_a(Market)
    end
  end 

  it 'has attributes' do
    market = Market.new("South Pearl Street Farmers Market")  
    expect(market.name).to eq("South Pearl Street Farmers Market")
    expect(market.vendors).to eq([])
  end

  

end 