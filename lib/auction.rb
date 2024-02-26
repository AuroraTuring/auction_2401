class Auction
  attr_reader :items, :bids

  def initialize
    @items = []
    @bids = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map {|item| item.name}
  end

  def add_bid(bid)
    @bids << bid
  end


end
