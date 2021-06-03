class SecretDiary
  attr_reader :locked

  def initialize
    @locked = true
  end 

  def lock
    @locked = true
   'Locked'
  end

  def unlock
    @locked = false
    'Unlocked'
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