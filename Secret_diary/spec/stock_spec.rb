require 'stock'

describe Stock do
let(:candy) { Stock.new }

  describe 'status' do
    it 'should show there is no more candy' do
      expect(candy.status).to eq 0
    end
  end

  describe 'restock' do
    it 'should restock' do
      expect(candy.restock(5)).to eq 5
    end
  end

end
