require_relative './modules_mixins_lecture_code'

class Watch

  attr_reader :strap, :type

  extend Trig

  def initialize(type, manufacturer, model)
    @type = type
    @current_time = format_time('00:00')  # this is not in initialize because it is a default value that is not given when using Watch
  end

  def display_time
    format_time(@current_time)
  end

  def format_time(str_time)
    # converts time from human to computer and vice versa
  end

  Trig.test

end

class Casio < Watch

  def initialize(type, model)
    super(type, 'Casio', model) # here casio is hard coded because if we ran it with just super it runs with the exact 2 arguments in the initialize in casio and we would get an argument error (2 for 3), since we dont need to change manufacturer with super -- we hard code 'Casio' by putting quotes around it
  end

end

class Fitbit < Watch
  def initialize(model) # all fitbits digital so no type needed
    super('digital', 'Fitbit', model)
  end

 # def self.timer_start # class methods use self -- or we can also do the next thing line 36 - 42
 # end

 def self.test
  puts "Working @ instance"
 end

  class << self
    
    def timer_start
      
    end

  end


end

puts Trig.test
puts Fitbit.supertest
