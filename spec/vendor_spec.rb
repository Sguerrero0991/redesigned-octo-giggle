require './lib/item'
require './lib/vendor'
require 'pry'

RSpec.describe Vendor do 
  describe '#initialize' do
    it 'is a Vendor' do
      vendor = Vendor.new("Rocky Mountain Fresh")
      expect(vendor).to be_a(Vendor)
    end

    it 'has attributes' do
      vendor = Vendor.new("Rocky Mountain Fresh")
      expect(vendor.name).to eq("Rocky Mountain Fresh")
      expect(vendor.inventory).to eq({})
    end
  end
end