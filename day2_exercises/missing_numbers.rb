
def find_double_using_hash(input_arr)
  frequency_hash = Hash.new(0)
  input_arr.each do |num|
    frequency_hash[num] += 1
  end
  #puts frequency_hash
  puts ""
  resultkv = frequency_hash.sort_by {|k,v| v }[-1]
  puts "The double integer is #{resultkv[0]}" 
end

def find_double_no_hash(input_arr)
  last_num = 0 # Guaranteed to not be in input array
  input_arr.sort!
  input_arr.each do |num|
    if num == last_num
      puts "The double integer is #{last_num}"
      return
    else
      last_num = num
    end
  end
end
#my_arr = [1,2,3,4,4,5,6]
my_arr = (1..1000000).to_a
my_arr << my_arr.sample
puts "Hash method:"
find_double_using_hash(my_arr)
puts "No Hash method:"
find_double_no_hash(my_arr)


