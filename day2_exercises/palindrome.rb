

puts "Enter a word: "
user_input = gets.chomp

if user_input == user_input.reverse
  puts "That's a palindrome"
else
  puts "That's not a palindrome"
end
