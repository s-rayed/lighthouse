class Animal

  attr_reader :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Fish < Animal
  # AGE = 5
  # NAME = 'FISH'
  attr_reader :number_of_fins
  def initialize(name, age, number_of_fins)
    super(name, age)
    @number_of_fins = number_of_fins
  end

  def swim
    puts self.age #returns the age of the instance
    puts 'I am swimming'
  end
  #This is a class method so we can call it using Fish.swim
  def self.swim
    puts 'I am the class and I am swimming'
  end

  #This is an instance method so it must be called on the instance of a class
  def swim
    puts 'I am the instance and I can swim too'
  end

end

@fish1 = Fish.new('Bob', 5, 10)
