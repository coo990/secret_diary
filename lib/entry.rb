require_relative 'secret_diary'

class Entry
  attr_reader :locked
  
  def initialize(lock)
    @locked = lock
  end 

  def add_entry
    fail 'Locked, no entry!' if @locked == true
    'Begin entry!'
  end

  def get_entries
    fail 'Locked, cannot display entries!' if @locked == true
    'Showing entries:'
  end
end