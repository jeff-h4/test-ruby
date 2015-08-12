# Print all the elements in a multi dimensional array

# Method 1
my_arr = [[1,2,3],[4,5,6],[7,8,9]]
print my_arr.flatten
puts ""

# Method 2
my_arr = [[1,2,3],[4,5,6],[7,8,9]]
my_arr.each do |elem1|
  elem1.each do |elem2|
    print "#{elem2} "
  end
end

puts "method 3"
my_arr = [[1,2,3],[4,5,6],[7,8,9]]
puts "#{my_arr.join}"


puts "method 4"
my_arr = [[1,2,3],[4,5,6],[7,8,9]]
my_arr.flat_map {|x| puts x}

puts "method 5"
my_arr.each {|x| x.each {|y| puts y}}
