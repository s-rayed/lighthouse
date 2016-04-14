require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jessica", last_name: "Lam", hourly_rate: 78)
@store1.employees.create(first_name: "Alice", last_name: "Luck", hourly_rate: 99)
@store1.employees.create(first_name: "James", last_name: "Franco", hourly_rate: 200)

@store2.employees.create(first_name: "Alicia", last_name: "Lo", hourly_rate: 90)
@store2.employees.create(first_name: "Ben", last_name: "Folrace", hourly_rate: 120)
@store2.employees.create(first_name: "Candice", last_name: "Wu", hourly_rate: 80)