class Checkout
  attr_accessor :cart
  def initialize
    @cart = []
  end

  def scan(item)
    @cart << item
    "#{item.name}: £#{item.price}"
  end

  def total
    tot = 0
    @cart.each { |item| 
      tot += item.price
    }
    tot
  end
end