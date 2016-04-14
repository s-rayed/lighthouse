def char_count(list)
  letters = Hash.new(0)
  list.each do |word|
    word.split('').each { |letter| letters[letter.to_sym] += 1 }
  end
  letters
end

# Why the long face(error)? 
# 1. This should return count of each letter in the list
# ex: { "a" => 4, "p" => 3, "l" => 1  ...}

#had to change the empty hash to hash.new(0)

puts char_count(['apples', 'oranges', 'hipsters', 'are', 'same'])


# 2. What are the improvements you can do to above code?

# the hash.new to initialize to 0 and converting each letter to symbol since they must be unique
