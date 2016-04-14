def fizzbuzz(start, finish)
  start.upto(finish) do |i|
    puts fb_method(i)
  end
end

def fb_method(i)
  if div_3?(i) && div_5?(i)
      :FizzBuzz
    elsif div_5?(i)
      :Buzz
      elsif div_3?(i)
        :Fizz
        else
          i
  end
end

def div_5?(i)
  i % 5 == 0
end

def div_3?(i)
  x1 % 3 == 0
end

fizzbuzz(60, 80)
