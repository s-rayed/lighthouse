class Submarine

  SURFACE = 0

  MAX_TILE = 9

  attr_accessor :cargo, :depth, :tile
  attr_reader :total_revenue

  def initialize
    @depth = SURFACE
    @tile = 0 
    @cargo = []
    @total_revenue = 0
  end


  def dive!
    if @depth == 0 
    dive = @depth += -500
    end
  end

  def surface
    if @depth == -500
     surface = @depth += 500
   end
  end

  def descend
    if @depth <= -500 
      descend = @depth += -500 
    end
    if @depth < -2000
       @depth = -2000
    end
  end

  def ascend
    if @depth < -500
      @depth += 500
    end
  end

  def forward 
    if @tile < MAX_TILE
      @tile += 1 
    end
  end

  def backward
    if @tile > 0 
      @tile -= 1
    end
  end

  def sushiable_fishes
      @cargo 
      total_sushiable = 0
      @cargo.each do |fish_type| 
        if fish_type.sushiable?
          total_sushiable += 1 
        end
      end
     total_sushiable
  end

  def fish
    if @depth == 0 
       puts "not submerged"
    else
      result = Ocean.fish(@depth, @tile)
       if "T" or "S"
          @cargo << result
      end
    end
  end

  def sell_cargo
    if @depth == 0 
       @cargo.each do |fish|
          @total_revenue += fish.value
       end
       @cargo = []
       true
    else
      false
    end
  end


end

