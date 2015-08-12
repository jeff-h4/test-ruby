

sentence = "There is no cow level"
my_arr = sentence.split
my_arr.each do |word|
  word.reverse!
end
result = my_arr.join(" ")
print result
