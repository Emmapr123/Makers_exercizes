require_relative 'stock'
require_relative 'funds'

class VendingMachine
  attr_accessor :name, :price, :stock, :balance

  def initialize(name, price)
    @name = name
    @price = price
    @stock = Stock.new
    @balance = Funds.new
  end

  def vend
    if @stock == 0
      print "insufficient stock"
    elsif
      @balance >= @price
      @balance -= @price
      @stock -= 1
      print "Enjoy your #{name}, your balance is now #{balance}"
    else
      print "insufficient funds"
    end
  end
end
