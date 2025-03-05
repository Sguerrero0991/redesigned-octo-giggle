class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    result = []
    @vendors.each do |vendor|
      result << vendor.name
    end
    result
  end

  def vendors_that_sell(item)
    result = []
    @vendors.each do |vendor| #iterates over ALL vendors and returns the ones that meet the conditions
      if vendor.inventory.key?(item)
        result << vendor
      end
    end
    result
  end
  

  def potential_revenue
    revenue = 0
    @inventory.each do |item, quantity|
      revenue += item.price * quantity
    end
    revenue
  end
end