

# Get sentence from user and print every word in that sentence capitalized
puts "Gimme a sentence :"
print gets.chomp.split.map {|word| word.capitalize}.join(" ")

