
# Cracking Password
=begin
Given a hashed password string: aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d

Write a code that finds out the original password, given the following:
- The password is compose do five letters (no numbers)
- All the letters are lower case
- It's using SHA1 hashing algorithm.
=end

require 'digest'

def permute(string)
  
end

hashstr = "aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d"
sha1 = Digest::SHA1.new
str = "abcde"
puts sha1.hexdigest str
str = "hello"
puts sha1.hexdigest str

puts sha1.hexdigest hashstr
