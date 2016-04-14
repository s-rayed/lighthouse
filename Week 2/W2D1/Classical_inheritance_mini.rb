module Flight

  def fly
    puts "I'm a #{self.class.name}, I'm flying!"
  end

end

class Animal
  attr_reader :number_of_legs, :can_breathe, :can_move, :instinctive
  def initialize(number_of_legs)
    @can_breathe = true
    @can_move = true
    @instinctive = true
    @number_of_legs = number_of_legs
  end
end

class Mammal < Animal
  attr_reader :warm_blooded
  def initialize
    super(number_of_legs)
    @warm_blooded = true
  end
end

class Amphibian < Animal
  attr_reader :cold_blooded, :lay_eggs
  def initialize
    @cold_blooded = true
    @lay_eggs = true
  end
end

class Bird < Animal
  include Flight
  attr_reader :can_fly
  def initialize
    @can_fly = true
    @warm_blooded = true
  end
end

class Primate < Mammal
  attr_reader :has_hair
  def initialize
    @has_hair = true
    super()
  end
end

class Frog < Amphibian
  attr_reader :skin_type
  def initialize
    @breathing_methods = ['lungs', 'skin']
    @skin_type = "smooth"
  end
end

class Bat < Mammal
  include Flight
  attr_reader :sonar
  def initialize
    @sonar = true
  end
end

class Parrot < Bird
  include Flight
  attr_reader :feathers
  def initialize
    @feathers = true
  end
end


class Chimpanzee < Primate
  attr_reader :opposable_thumbs
  def initialize
    @opposable_thumbs = true
  end
end


puts Frog.new.skin_type










