# Sort the array from lowest to highest
def bubble_sort(arr)
  x = arr.length
  loop do 
  swapping = false
  
 (x-1).times do |y|
  if arr[y] > arr[y+1]
  arr[y], arr[y+1] = arr[y+1], arr[y]
  swapping = true
end
end
break if not swapping 
end
arr
end

def sort(arr)
  arr.sort
end

# Find the maximum 
def maximum(arr)
  sort(arr).last
end

def minimum(arr)
  sort(arr).first
end
 
# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

 
# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"
 
result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"