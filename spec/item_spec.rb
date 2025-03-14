require './lib/item'
require './lib/vendor'
require 'pry'

RSpec.describe Item do 
  describe '#initialize' do
    it 'is a Item' do
      item = Item.new
      item1 = Item.new({name: 'Peach', price: "$0.75"})
      item2 = Item.new({name: 'Tomato', price: '$0.50'})
      expect(item1).to be_a(Item)
      expect(item2).to be_a(Item)
    end

    it 'has attributes' do
      info = {name: 'Tomato', price: '$0.50'}
      
      item2 = Item.new(info)

      expect(item2.name).to eq('Tomato')
      expect(item2.price).to eq(0.5)
    end
  end
end