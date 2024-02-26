require "./lib/item"
require "./lib/auction"
require "./lib/attendee"

RSpec.describe Auction do
  before(:each) do
    @auction = Auction.new
    @item1 = Item.new('Chalkware Piggy Bank')
    @item2 = Item.new('Bamboo Picture Frame')
  end

  it "exists and has attributes" do
    expect(@auction).to be_a(Auction)
    expect(@auction.items).to eq([])
  end

  it "can add items to auction" do
    expect(@auction.items).to eq([])
    @auction.add_item(@item1)
    @auction.add_item(@item2)

    expect(@auction.items).to eq([@item1, @item2])
    expect(@auction.item_names).to eq("Chalkware Piggy Bank", "Bamboo Picture Frame")
  end

end
