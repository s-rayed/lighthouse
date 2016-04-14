class GiantSalmon < Fish

  attr_reader :value_per_kg


  def initialize
    super(4,30)
     @value_per_kg = 7.5
  end

  def sushiable?
    true
  end

end
