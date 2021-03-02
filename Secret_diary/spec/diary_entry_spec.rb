require 'secret_diary'

describe DiaryEntry do
let(:my_diary) { DiaryEntry.new }

  describe 'lock' do
    it 'should see lock' do
      my_diary.lock.unlock
      my_diary.add_entry('Hello')
      expect(my_diary.get_entries).to eq ['Hello']
    end
  end

  describe 'add_entry' do
    it 'should return error when locked' do
      my_diary.lock
      expect(my_diary.add_entry('Hello')).to eq 'error'
    end
  end
end
