require 'pry'

states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

# task 1

states[:TX] = 'Texas'
states[:AL] = 'Alaska'

# task 2

cities = {
  OR: ['Portland', 'Baker City', 'Prineville', 'Gold Beach'],
  FL: ['Orlando', 'Miami', 'Tampa', 'Fort Lauderdale'],
  CA: ['Los Angeles', 'San Francisco', 'Oakland', 'Sacramento'],
  MI: ['Detroit', 'Flint', 'Kalamazoo', 'Dearborn']
}

# task 3

def describe_state(cities, states)
  puts "Please enter one of the follow state codes to get details. OR, FL, CA, MI."
  state_code = gets.chomp.to_sym
    if cities.include?(state_code)
      puts "#{state_code} is the home of #{cities[state_code]}"
    end
end

# task 4

taxes = {
  OR: 0.05,
  FL: 0.06,
  CA: 0.075,
  MI: 0.0425
}

#describe_state(cities, states)

# task 5

def calculate_tax(taxes)
  puts "Is the state you reside in one of OR, FL, CA or MI. If so, Please enter it."
  input_state = gets.chomp.to_sym
  puts "Okay, what is the dollar amount you would like to calculate the tax for?"
  input_amount = gets.chomp.to_f
  total = input_amount + (input_amount * taxes[input_state].to_f)
  puts "in #{input_state} your total amount including tax is #{total.round(2)}"
end

 #calculate_tax(taxes)

# TASK 6

def find_state_for_city(cities)
  puts cities.inspect
  puts "What city are you from?"
  input_city = gets.chomp
  cities.detect{ |k, v| return k.to_s if v.include?(input_city)}
  binding.pry
end

puts find_state_for_city(cities)




