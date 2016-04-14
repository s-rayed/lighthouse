def fizzbuzz(first, last)
  (first..last).each do |i|
    print "Fizz" if i.divisible_by?(3)
    print "Buzz" if i.divisible_by?(5)
    if !(i.divisible_by?(3) || i.divisible_by?(5))
      print i
    end
    puts
  end
end

class Integer
  def divisible_by?(x)
    self % x == 0 ? true : false
  end
end

fizzbuzz(1, 100)