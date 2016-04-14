class Ship

  DEFAULT_HITS = 0

  attr_reader :length, :max_shots, :hits

  def initialize(length, max_shots)
    @length = length
    @max_shots = max_shots
    @hits = DEFAULT_HITS
  end

end