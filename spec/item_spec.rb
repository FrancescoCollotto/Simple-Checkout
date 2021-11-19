require 'item'

describe Item do
  
  it "show the price" do
    item = Item.new(5)
    expect(item).to respond_to :price
  end

  it "expect price to be a decimal number" do
    item = Item.new(3)
    expect(item.price).to be_an_instance_of Float
  end
end