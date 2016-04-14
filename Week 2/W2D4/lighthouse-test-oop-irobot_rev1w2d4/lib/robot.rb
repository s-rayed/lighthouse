class Robot
  #Breakout
  #DEFAULT_DAMAGE = 5
  #MAX_HEALTH = 100
  #STARTING_POSITION = [0,0]
  attr_accessor :items, :items_weight, :health, :equipped_weapon, :weapon, :hit

  def initialize
    @x = 0
    @y = 0
    @items = []
    @health = 100
    @equipped_weapon = nil
  end

  class RobotAlreadyDeadError < StandardError
  end

  class UnattackableEnemy < StandardError
  end

  def position
    [@x,@y] #BREAKOUT -- STARTING_POSITION.dup
  end

  def move_left
    @x -= 1
  end

  def move_right
    @x += 1
  end  

  def move_up
    @y += 1
  end

  def move_down
    @y -= 1
  end

  def pick_up(item)
    return false if item.weight + items_weight > 250
    if item.is_a?(Weapon)
      @equipped_weapon = item
    else
      if item.is_a?(BoxOfBolts) && health <= 80
        item.feed(self)
      else
        @items << item
      # @items.each do |item|
        # if @items.is_a?(BoxOfBolts) && @health <= 80
        #   self.feed
        # end
      end
    end
  end

  def items_weight
    weight_sum =  0
    items.each do |i|
      weight_sum += i.weight
    end
    weight_sum
  end

  def wound(dam_amount)
    if dam_amount > 100
      @health = 0
    else
      @health -= dam_amount
    end
    # breakout
    #@health -= damage
    #@health = 0 if @health < 0 -- these 2 lines instead of the entire if/else statement.
  end

  def heal(heal_amount)
    if @health < 100
      @health += heal_amount
    else
      @health = 100
    end
    #breakout
    #@health += heal_amount
    #@health = MAX_HEALTH if @health > MAX_HEALTH
  end

  def attack(enemy)
    diff_y = enemy.position[1] - self.position[1]
    if (diff_y) > 2
      # do nothing
    elsif (diff_y) == 2 && @equipped_weapon.is_a?(Grenade)
      @equipped_weapon.hit(enemy)
      @equipped_weapon = nil
    elsif (diff_y) < -1
      # do nothing
    else   
      if @equipped_weapon != nil
        @equipped_weapon.hit(enemy)
      else
        enemy.wound(5) # enemy.wound(DEFAULT_DAMAGE)
      end
    end
  end

  def heal!(heal_amt)
    raise RobotAlreadyDeadError, 'Your Robot is dead' unless @health > 0
  end

  def attack!(enemy)
    raise UnattackableEnemy, 'Your not attacking a robot' unless enemy.is_a?(Robot)
  end

end


# # Enhancement 1 test. -- if Robot#heal! called raise exception if health <= 0
# robot = Robot.new
# robot2 = Robot.new
# non_robot = []
# puts robot.wound(100)
# puts robot.heal!(20)

