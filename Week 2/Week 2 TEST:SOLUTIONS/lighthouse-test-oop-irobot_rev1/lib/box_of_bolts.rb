class BoxOfBolts < Item

  attr_accessor :name, :weight

  def initialize
    super('Box of bolts', 25)
  end

  def feed(robot)
    robot.heal(20)
  end



end