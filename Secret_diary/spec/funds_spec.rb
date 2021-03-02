require 'funds'

describe Funds do
let(:candy) { Funds.new }

  describe 'status' do
    it 'should return the status of the funds' do
      expect(candy.status).to eq 0
    end
  end

  describe 'add_funds' do
    it 'should add money to the funds' do
      expect(candy.add_funds(5)).to eq 5
    end
  end

end
