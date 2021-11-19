class Item
  attr_reader :price
  attr_reader :name
  def initialize(name, price)
    @name = name
    @price = price.to_f
  end
end