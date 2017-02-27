# My own game
puts "To get into a bakery there are two doors. Do you go through door #1 or #2?"

print ">"
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant wasp here eating cheesecake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the wasp."
  puts "3. Run away."

  print ">"
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The wasp stings your face. You can no longer see."
  elsif bear == "2"
    puts "The wasp stings your legs. They swell up so much you can no longer walk."
  else
    puts "Well, %s is probably better. Wasp flies away." % bear
end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print ">"
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello. Well done."
  else
    puts "The insanity rots your eyes into a pool of goo. Well done."
end

else
  puts "You stumble around and fall on a spear and die. Good job!"
end
