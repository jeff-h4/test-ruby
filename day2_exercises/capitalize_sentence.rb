
sentence = "Once upon a time, in a galaxy far far away, I eat cake."

my_arr = sentence.split
my_arr.each do |word|
  word.capitalize!
end
new_sentence = my_arr.join(" ")
print sentence
puts ""
print new_sentence
