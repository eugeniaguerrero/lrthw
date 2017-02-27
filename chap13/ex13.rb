first, second, third = ARGV

puts "The script it called: #{$0}"
print "What is your name? "
name = $stdin.gets.chomp

puts "Hello #{name}, it looks like you are reading #{first}, #{second}, #{third}"
