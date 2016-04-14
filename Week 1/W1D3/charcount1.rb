def char_count(string)
  new_hash = Hash.new(0)
  string.split("").each do |letter| 
    new_hash[letter] += 1 
  end
  new_hash
end

p char_count("This is a string")







# def char_count(string)
#   empty_hash = Hash.new(0)
#   string.split("").each do |letter|
#     if letter != " "
#       if !empty_hash.has_key?(letter)
#          empty_hash[letter][0] += 1
#          empty_hash[letter]
#        end
#      end
#    end
#    return empty_hash
# end


#puts char_count("Lighthouse in the house...")






