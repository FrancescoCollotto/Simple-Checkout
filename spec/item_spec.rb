require 'item'

describe Item do
  let(:item) { described_class.new("Banana", 2)}

  it "show the price" do
    expect(item).to respond_to :price
  end

  it "expect price to be a decimal number" do
    expect(item.price).to be_an_instance_of Float
  end
end