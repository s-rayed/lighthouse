def to_roman(num)
  # Your code here
  roman_numeral = ""

  numbers = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I"
  }

  numbers.each do |number, roman|
    while num >= number
      roman_numeral << roman
      num -= number
    end
  end
  roman_numeral
end

# Drive code... this should print out trues.
 
puts to_roman(50)
puts to_roman(40)
puts to_roman(900)
 
# TODO: what other cases could you add to ensure your to_roman method is working?