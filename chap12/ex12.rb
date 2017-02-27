print "How much money will you pay? "
number = gets.chomp.to_f

change = (number / 100) * 10
puts "Your change is #{change}."
