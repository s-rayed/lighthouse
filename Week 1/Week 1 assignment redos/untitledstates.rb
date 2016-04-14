states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

states[:TX] = 'Texas'
states[:CO] = 'Colorado'

cities = {
  OR: ['Portland', 'Baker City', 'Prineville', 'Gold Beach'],
  FL: ['Orlando', 'Miami', 'Tampa', 'Fort Lauderdale'],
  CA: ['LA', 'San Fran', 'Oakland', 'Sacramento'],
  NY: ['NYC', 'Buffalo', 'Village', 'Somename']
}

def describe_state(cities, states)
  if describe_state.include?(states[0])
    puts cities[states[0]]
  end
  describe_state
end

puts describe_state(FL)

