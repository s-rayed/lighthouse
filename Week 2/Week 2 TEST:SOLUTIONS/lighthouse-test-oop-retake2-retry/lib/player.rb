class Player

  attr_reader :shots_fired, :hits, :misses

  def initialize
    @shots_fired = 0
    @hits = []
    @misses = []
  end

  def fire(coordinate)
    if shots_fired < 10
      @shots_fired += 1
      result = Board.play(coordinate)
      @hits << coordinate unless result.nil?
      @misses << coordinate if result.nil?
      result
    else
      false
    end
  end

end
