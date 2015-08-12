

puts "Enter a number N for the Fibonacci sequence: "
input = gets.to_i
exit if input == 0

my_arr = []
for index in 1..input
  if (1..2).include? index
    my_arr << 1
  else
    my_arr << my_arr[-1] + my_arr[-2]
  end
end
print my_arr
puts ""

