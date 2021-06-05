class Lock
  attr_reader :locked

  def initialize
    @locked = true
  end 

  def lock
    'Locked'
    @locked = true
  end

  def unlock
    'Unlocked'
    @locked = false

  end

end