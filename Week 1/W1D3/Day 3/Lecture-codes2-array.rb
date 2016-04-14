
#ARRAY QUESTION #1: Are arrays ordered and sorted or just sorted or ordered.



#ARRAY QUESTION #2: What is the difference between ordered and sorted






















# Ruby arrays are ordered, integer-indexed collections of any object. Each element in an array is associated with and referred to by an index.
#
# Array indexing starts at 0, as in C or Java. A negative index is assumed relative to the end of the array --- that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.
#
# Ruby arrays can hold objects such as String, Integer, Fixnum, Hash, Symbol, even other Array objects. Ruby arrays are not as rigid as arrays in other languages. Ruby arrays grow automatically while adding elements to them.

#CREATING ARRAYS
# names = Array.new(20)
# puts names.size  # This returns 20
# puts names.length # This also returns 20




# names = Array.new(10, "adam")
# puts "#{names}"
# names.each do |name|
#   puts name
# end

# nums = Array.new(10) { |e| e = e * 2 }
# puts "#{nums}"

# nums = Array.[](1, 2, 3, 4,5)
# nums = Array[1, 2, 3, 4,5]
nums = [1, 2, 3]












# BASIC ARRAY W LOOPS
# [1, 2, 3].each do |number|
#   puts number
# end
#
# nums.reverse.each do |n|
#   puts "value: #{n}"
# end
#
# ["A", "B", "Cat"].each do |string|
#   puts string
# end
#
#BASIC ARRAY ACCESS
#names = ["Adam", "Daniel", "Jon"]
# puts names[0]
# puts names[1]
# puts names[2]
# p names[3]

#INTERMEDIATE ARRAY ACCESS
# puts names[-1]
# puts names.last
# puts names.at(2)











# MIXED ARRAY
 # random = [1, ["hello", "goodbye"], ["1", "2", "3"], {"email" => "adam@88labs.com", other_email: "adam@cosmicmind.io"}, [4, 3, 5]]

# data_hash = random[3]
# email = data_hash[:other_email]
# puts email
#
# first_email = random[3]["email"]

# random.each do |r|
#   puts c = r.class
#   if c == Fixnum
#     p r
#   elsif c == Array
#     r.each do |element|
#         #p "----" + " " + element
#         p "----- #{element}"
#     end
#   elsif c == Hash
#     r.each do |key, value|
#       puts "key: #{key} value: #{value}"
#     end
#   end
# end

# puts random[1][1]
# puts random[3]["email"]
# puts random[3][:other_email] #colon on the opposite side? what












# ARRAY BUILT IN METHODS
#puts "#{[1, 2, 3] + [4, 5, 4 + 6 - 2]}"

# [1, 2, 3, 4, 5, 8]










#puts "1, 2, 3".split(",").join("/")
#














# How would we make a set? An array of distinct values with no duplicates


#puts "#{[1, 2, 3, 4, 5] & [4, 5, 6]}" # Returns a new array containing elements common to the two arrays, with no duplicates.







#puts "#{[1, 2, 3, 4, 5] | [4, 5, 6]}" # Returns a new array by joining array with other_array, removing duplicates.













#puts "#{[1, 2, 3] * 3}"














#puts "#{[4, 5, 6, 7] - [6, 7]}"
#















# if [[1, 2], "O", {key: "value"}] == [[1, 2], "O", {key:   "value"}]
#   puts true
# end

 letters = ["a", "b", "c", "d", "e"]

# puts "#{letters[2, 4].delete_at(1)}"
#

#  puts letters.delete_at(3)
# puts "#{letters}"







# puts letters.index("b")











# puts letters.push("X")
#
# puts
#
# puts letters.pop
#
# puts
#
# puts letters
#

# puts "#{letters}"
# puts letters.reject! { |item| item == "c"}
# puts "#{letters}"

 puts "#{[2, 6, 3, 7,8, 2, 1, 4, 6, 8, 9, 4, 2, 5,7].uniq.sort.reject! {|item| item % 2 == 0}}"
