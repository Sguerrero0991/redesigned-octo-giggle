require './lib/item'
require './lib/vendor'
require 'pry'

RSpec.describe Item do 
  describe '#initialize' do
    it 'is a Item' do
      item1 = Item.new({name: 'Peach', price: "$0.75"})
      expect(item1).to be_a(Item)
    end

  end
end