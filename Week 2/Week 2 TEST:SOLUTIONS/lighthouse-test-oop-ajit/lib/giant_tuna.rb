class GiantTuna < Fish

  attr_reader :value_per_kg

  def initialize
    super(2,25)
    @value_per_kg = 12.5
  end

  def sushiable?
    true
  end

end
