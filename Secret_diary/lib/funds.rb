class Funds
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def status
    @balance
  end

  def add_funds(money)
    @balance += money
  end

end
