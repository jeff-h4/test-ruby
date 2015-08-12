

a = true
if a
  puts "Hellow"
else
  puts "Hey"
end

# Short form with ternary operator
# a ? -> Is a true?
# : -> else
puts a ? "Hello" : "Hey"

a = "Hello CodeCore"
puts a.respond_to?(:to_a) # True or False - String has to_a method?

