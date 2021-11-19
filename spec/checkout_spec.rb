require "checkout"
require "item"

describe Checkout do
  let(:shop) { described_class.new}
  let(:item) { Item.new("Banana", 1.99) }
  
  describe "#scan" do
    it "scan items" do
      expect(shop).to respond_to(:scan).with(1).argument
    end
    it "return the item name" do
      expect(shop.scan(item)).to eq("Banana: £1.99")
    end
    it "adds item to shopping cart" do
      number_of_items = shop.cart.length
      shop.scan(item)
      expect(shop.cart.length).to be > number_of_items
    end
  end

  describe "#total" do
    it "show the total price in cart" do
      5.times { shop.scan(item) }
      expect(shop.total).to eq(item.price * 5)
    end
  end

end