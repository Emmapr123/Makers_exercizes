class Stock
  attr_accessor :stock

  def initialize
    @stock = 0
  end

  def status
    @stock
  end

  def restock(stock_amount)
    @stock += stock_amount
  end

end
