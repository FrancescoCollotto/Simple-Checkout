require 'item'

describe Item do
  it "show the price" do
    item = Item.new(5)
    expect(item).to respond_to :price
    # expect(item.price).to be_an_instance_of Integer
  end
end