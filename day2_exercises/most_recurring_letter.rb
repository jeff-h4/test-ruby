=begin
Find a way that will return the letter that occurred most in a given string. For instance if you give it: Hello it will give back the letter: l
=end

# This is the input string
my_string = "Mississippi is a state"
puts "String is: #{my_string}"
# Initialize the hash that contains all letters.
# All values are set to 0 initially.
result_hash = Hash.new(0)
# Now, let's break the string into an array of characters
my_arr = my_string.split("")

# For each letter in the array, for the target letter, increment its count
my_arr.each do |letter|
    result_hash[letter] += 1;
end

# Go through the hash to check the letter counts
max_letter = false
max_freq = 0;
result_hash.each do |key,value|
  if !max_letter
    max_letter = key
    max_freq = value
  elsif max_freq < value
    max_letter = key
    max_freq = value
  end
end
# Print the result
print result_hash
puts ""
print "The most occurring letter is #{max_letter}, which occurred #{max_freq} times"

