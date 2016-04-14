class Robot

  attr_accessor :x, :y, :items, :items_weight, :health, :attack, :heal, :equipped_weapon

  def initialize
    @x = 0
    @y = 0
    @items = []
    @health = 100
    @equipped_weapon = @weapon
  end

  def position
    [@x, @y]
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
    @items << item
  end

  def items_weight
    sum =0
    items.each do |i|
      sum += i.weight
    end
    return sum
  end

  def wound(damage_amount)
    if damage_amount > 100
      @health = 0
    else 
      @health -= damage_amount
    end
  end

  def heal(potion)
    if @health < 100
      @health += potion
    else
      @health = 100
    end
  end
  
  def attack(enemy)
    enemy.wound(5)
  end



end
