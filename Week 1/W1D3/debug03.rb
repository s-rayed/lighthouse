def sum(list)
  sum = 0
  list.each do |ele|
    sum += ele.to_i
  end
  sum
end

def sum_enum(list)
  sum = 0
  list.map { |e| sum += e.to_i }
  sum
end

list1 = [16,21,31,42,55]

# 1. The following should return 165 instead of an error
puts sum(list1)

#moved sum = 0 above the list.each line .. made ele into an integer.

# 2. How would you refactor it using an enumerable method other than each? Examples of enumerables: map, select, inject, reject, detect.
puts sum_enum(list1)

#defined a sum_enum that uses the list argument -- sum = 0 at first -- then used the list.map to evaluate each - 
# index of the array -- then created a code block using e that sums each e

