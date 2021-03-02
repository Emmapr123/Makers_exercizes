require_relative 'Lock'

class DiaryEntry
attr_accessor :entry, :lock

  def initialize
    @lock = Lock.new()
    @entry = entry
    @all_entries = []
  end

  def add_entry(entry)
    if @lock.locked == true
      'error'
    else
      @all_entries << entry
    end
  end

  def get_entries
    if @lock.locked == true
      'error'
    else
      @all_entries
    end
  end

end
