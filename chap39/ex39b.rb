# create a mapping of state to abbreviation
states = {
  'Connecticut' => 'CT',
  'Michigan' => 'MI',
  'Alaska' => 'AK',
  'New York' => 'NY',
  'Maine' => 'ME'
}

# create a basic set of states and some cities in them
cities = {
  'AK' => 'Anchorage',
  'MI' => 'Detroit',
  'CT' => 'Danbury'
}

# add some cities
cities ['NY'] = 'New York'
cities ['ME'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "ME State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Maine's abbreviation is: #{states['Maine']}"
puts "Connecticut's abbreviation is: #{states['Connecticut']}"

# do it by using the states then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "New York has: #{cities[states['New York']]}"

# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby saus "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

#default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"
