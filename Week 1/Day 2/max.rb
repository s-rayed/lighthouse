# Find the maximum 
def maximum(arr)
  arr.max
end

# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"

result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"

result = maximum([6])
puts "max of just 6 is: #{result}"
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
array = [5,4,3,2]

largest_number=nil
array.each do |i|

 if largest_number.nil? || i>largest_number
   largest_number = i
 end
end


puts "max of 5, 4, 3, 2 is: #{largest_number}"

array1 = [2, 42, 22, 02]

def maximum(array) 
max = "".to_i
array.each do |i|
if i > max || max == "".to_i
 max = i
 puts "max of #{array} is #{max}"
end
end
end

maximum(array1)

# define largest number
# iterate over array
# ...profit?