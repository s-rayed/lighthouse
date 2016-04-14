require 'pry'

class Calculator

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @accumulator = 0
  end

  def add
    accumulator = @num1 + @num2
  end
  
  def subtract
    accumulator = @num1 - @num2
  end

  def multiply
    accumulator = @num1 * @num2
  end

  def divide(num)
    accumulator = @num1 / @num2
  end

  def accumulator
    accumulator
  end

end

x = Calculator.new(5, 10)
x.add
binding.pry
# x.multiply(2, 4)
# x.divide(5, 5)
# x.subtract(7, 5)
