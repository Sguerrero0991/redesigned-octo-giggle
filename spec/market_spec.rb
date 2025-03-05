require './lib/item'
require './lib/vendor'
require './lib/market'
require 'pry'

RSpec.describe Vendor do 
  describe '#initialize' do
    it 'is a Vendor' do
      vendor = Vendor.new("Rocky Mountain Fresh")
      expect(vendor).to be_a(Vendor)
    end