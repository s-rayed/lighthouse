def fizzbuzz(first,last)
  (first..last).each do |number|
    print "Fizz" if number.divisible_by?(3)
    print "Buzz" if number.divisible_by?(5)
    if !(number.divisible_by?(3) || number.divisible_by?(5))
      print number
    end
    puts
  end
end

class Integer
  def divisible_by?(x)
    self % x == 0 ? true : false
  end
end

#example
fizzbuzz(1,100)
