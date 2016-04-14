class Robot

  def initialize
    @x = 0
    @y = 0
  end

  def position
    [@x, @y]
  end

  def move_left
    @x -= 1
  end

  def move_right
    @x += 1
  end

  def move_up
    @y += 1
  end

  def move_down
    @y -= 1
  end

end