require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts total_revenue
total_stores = Store.count
average_revenue = total_revenue/total_stores
puts average_revenue

mil_more = Store.where("annual_revenue > 1000000").count
puts mil_more