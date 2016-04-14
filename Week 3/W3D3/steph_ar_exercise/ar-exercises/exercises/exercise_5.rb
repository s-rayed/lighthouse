require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_annual = Store.sum(:annual_revenue)
num_of_stores = Store.count
avg_annual = total_annual/num_of_stores

p total_annual
p num_of_stores
p avg_annual