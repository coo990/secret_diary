class SecretDiary
  def lock
    true
    'Locked'
  end

  def unlock
    'Unlocked'
  end

  def add_entry
    'Begin entry!'
  end

  def get_entries
    'Showing entries:'
  end
end