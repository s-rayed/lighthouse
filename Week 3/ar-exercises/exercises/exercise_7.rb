require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "What name would you like to give your new store?"
user_input = gets.chomp
@store3 = Store.create(name: user_input)
@store3.valid?
p @store3.errors.messages