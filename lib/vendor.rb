class Vendor
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0) # Default value for missing keys is 0
  end

  def check_stock(item) # Returns the stock count or 0 if item is not found
    @inventory[item]
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end
end 