require 'Lock'

describe Lock do
let(:my_diary) { Lock.new }

  it 'locks' do
    expect(my_diary.lock).to eq true
  end

  it 'unlocks' do
    expect(my_diary.unlock).to eq false
  end
end
