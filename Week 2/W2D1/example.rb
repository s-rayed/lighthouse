# ---------------------------------------
# Modules
# ---------------------------------------

module Movement
  def method_of_movement(method)
    puts "#{self.class.name}'s #{method}"
  end
end

module Flying
  def i_fly
    puts "#{self.class.name}'s can fly"
  end
end

# ---------------------------------------
# Animal Class
# ---------------------------------------

class Animal
  attr_reader :can_breathe, :can_move, :instinctive, :number_of_legs
  def initialize(number_of_legs)
    @can_breathe = true
    @can_move = true
    @instinctive = true
    @number_of_legs = number_of_legs
  end
end

# ---------------------------------------
# ---------------------------------------

class Mammal < Animal
  attr_reader :warm_blooded
  include Movement

  def initialize
    super(2)
    @warm_blooded = true
    @movement = "walk, swim, or in the case of Bats, fly." 
    method_of_movement(@movement)  
  end
end

class Amphibian < Animal
  attr_reader :cold_blooded, :lay_eggs
  def initialize
    @cold_blooded = true
    @lay_eggs = true  
    @movement = "crawl or slither" 
    method_of_movement(@movement) 
  end
end

class Bird < Animal
  attr_reader :can_fly, :warm_blooded
  def initialize
    @can_fly = true
    @warm_blooded = true
    @movement = "fly" 
    method_of_movement(@movement) 
  end
end

# ---------------------------------------
# ---------------------------------------

class Primate < Mammal
  attr_reader :has_hair
  def initialize
    @has_hair = true
  end
end

# --------------------

class Frog
  def initialize
    @breathing_methods = ['lungs', 'skin']
    @skin_type = "smooth"
  end
end

# --------------------

class Bat < Mammal
  include Flying
  def initialize
    i_fly
  end
end

# --------------------

class Parrot < Bird
  include Flying
  def initialize
    i_fly
  end
end

# --------------------

class Chimanzee < Primate

end

puts Mammal.new.warm_blooded