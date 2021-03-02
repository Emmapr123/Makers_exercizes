require 'vending_machine'

describe VendingMachine do
  let(:candy) { VendingMachine.new 'candy', 10}

  it 'has a getter' do
    expect(candy.name).to eq 'candy'
  end

  it 'has a price getter/setter' do
    expect(candy.price).to eq 10
  end

  describe 'vend' do
    it 'does not vendy candy if not enough balance' do
      expect do
        candy.balance = 1
        candy.stock = 3
        candy.vend
      end.to output("insufficient funds").to_stdout
    end
  end

  describe 'vend' do
    it 'vends candy as there is enough balance' do
      expect do
        candy.stock = 3
        candy.balance = 12
        candy.vend
      end.to output("Enjoy your candy, your balance is now 2").to_stdout
    end
  end

  describe 'vend' do
    it 'cannot vend candy if the stock is too low' do
      expect do
        candy.stock = 0
        candy.vend
      end.to output("insufficient stock").to_stdout
    end
  end

end
