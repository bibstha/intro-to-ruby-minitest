class Order
  def initialize(items)
    @items = items
  end

  attr_reader :items

  def total
    items.map(&:price).sum
  end

  def valid?
    items.any?
  end
end
