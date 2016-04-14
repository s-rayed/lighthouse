class Peasant < Unit

  attr_writer :health_points
  attr_reader :attack_power

  def initialize
    @health_points = 35
    @attack_power = 0
  end

end