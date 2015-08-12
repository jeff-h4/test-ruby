
my_arr = %w(jenny paul myra jaspreet JONAS)
new_arr = []
print my_arr
my_arr.each do |name|
  new_arr << name.capitalize
end
print my_arr
puts ""
print new_arr
