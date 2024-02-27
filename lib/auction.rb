class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map {|item| item.name}
  end

  def unpopular_items
    no_bids = []
    @items.each do |item|
      if item.bids.empty?
        no_bids << item
      end
    end
    no_bids
  end

  def potential_revenue
    @items.each do |item|
      item.bids.values.sort.first
    end
  end


end
