# SecretDiary
#   - lock
#   - unlock
#   - add_entry
#   - get_entries
#
# Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.
#
# When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.
#
# When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should, again, throw an error.

class SecretDiary
  attr_accessor :locked, :entry

  def initialize
    @locked = true
    @entry = entry
    @all_entries = []
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry(entry)
    if @locked == true
      'error'
    else
      @all_entries << entry
    end
  end

  def get_entries
    if @locked == true
      'error'
    else
      @all_entries
  end
  end

end
