class Player

  attr_reader :hits, :misses
  attr_accessor :shots_fired

  def initialize
    @shots_fired = 0
    @hits = []
    @misses = []
  end

  def fire(coordinate)
    if self.shots_fired >= 10
      false
    else
      self.shots_fired += 1
      result_of_play = Board.play(coordinate)
      if result_of_play
        @hits << coordinate
      else
        @misses << coordinate
      end
      result_of_play
    end
  end

  def is_max_shots?
    self.shots_fired >= 10
  end

end
