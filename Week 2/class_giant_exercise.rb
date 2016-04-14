class Person
  attr_reader :name, :height, :strength
  def initialize(name)
    @name = name
  end
end

class Giant < Person
  def initialize(name, height, strength)
    super(name)
    @height = height
    @strength = strength
  end
  def attributes
      puts "His name is #{@name}, he is #{@height} m tall and his strength is #{@strength}"
  end
end

g = Giant.new("Jardo", 10, 100)
puts g.attributes