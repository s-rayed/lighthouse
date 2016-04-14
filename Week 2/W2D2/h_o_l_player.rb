class Player 
  attr_reader :name
  attr_accessor :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end
end