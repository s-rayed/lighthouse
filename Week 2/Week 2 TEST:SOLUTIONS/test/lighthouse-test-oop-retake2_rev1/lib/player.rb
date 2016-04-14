class Player

  attr_reader :shots_fired, :hits, :misses

  def initialize
    @shots_fired = 0
    @hits = []
    @misses = []
  end

  # def fire(coordinate)

  #   if @shots_fired >=10
  #     return false
  #   else
  #     @shots_fired += 1
  #   end
    
  #   x = Board.play(coordinate)

  #   if x
  #     @hits << coordinate
  #   else
  #     @misses << coordinate
  #   end
  #   return x

  # end

  ## FAISAL TAKE UP

  def fire(coordinate)

    if self.shots_fired < 10
      self.shots_fired += 1
      result = board.play(coordinate)
      @hits << coordinate unless result.nil?
      @misses << coordinates if result.nil?
      return result
    else
      false
    end
  end

#####  ---- SINCE on line 34 in the 05 test -- it says 
### expect(@player).to receive(:shots_fired).and_return(10) -- this says i want to stub shots_fired with 10 instead of the actual value.. it doesnt say @shots fired-- its :shots_fired
## so what the stub asks you to do is to create another method with the same name --- so we created def shots_fired; 10; end
# now since shots_fired is not only reading this but also writing -- so change :shots_fired to attr_accessor

end


