require 'secret_diary'

describe SecretDiary do
let(:my_diary) { SecretDiary.new() }

  it 'knows if it is locked' do
    expect(my_diary.locked).to eq true
  end

  describe 'unlock' do
    it 'should unlock the diary' do
      expect(my_diary.unlock).to eq false
    end
  end

  describe 'add_entry' do
    it 'should raise an error when locked' do
      expect(my_diary.add_entry('Hello')).to eq 'error'
    end
  end

  describe 'get_entries' do
    it 'should raise an error when locked' do
      expect(my_diary.get_entries).to eq 'error'
    end
  end

  describe 'add_entry' do
    it 'should collect entries when unlocked' do
      my_diary.unlock
      expect(my_diary.add_entry('Hello')).to eq ['Hello']
    end
  end

  describe 'get_entries' do
    it 'should return the entries that were added' do
      my_diary.unlock
      my_diary.add_entry('Hello')
      expect(my_diary.get_entries).to eq ['Hello']
    end
  end
end
