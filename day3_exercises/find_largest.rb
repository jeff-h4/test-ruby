

def find_largest(first,*the_rest)
  my_arr = Array.new(the_rest)
  my_arr << first
  largest = nil
  exit if first == nil or the_rest == nil
  my_arr.sort!
  return my_arr[-1]
end

puts find_largest(4,-4,5,2000,1523,32)
