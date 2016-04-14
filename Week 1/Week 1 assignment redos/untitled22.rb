def count_letters(string)
  new_hash = Hash.new(0)
  string.split("").each do |letter|
    if letter != " "
      new_hash[letter] += 1
    else
      
    end
  new_hash
end

puts count_letters("lighthouse in the house ...")