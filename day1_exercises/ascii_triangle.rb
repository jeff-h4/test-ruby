
# ASCII Triangle Problem

print "Give me a number: "
number = gets.to_i;
counter = 1
until counter > number
  # Strings can be multiplied
  #print " " * (number - counter), "O " * counter, "\n"
  #alternatively
  puts "#{" "* (number - counter)}#{'0 ' * counter}"
  counter += 1
end
