class Weapon < Item

  attr_accessor :damage, :equipped_weapon, :range

  def initialize(name, weight, damage, range = 1)
    super(name, weight)
    @damage = damage
    @range = range
  end

  def hit(enemy)
    enemy.wound(damage)
  end


end