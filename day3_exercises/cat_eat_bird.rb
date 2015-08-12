


require './animal.rb'
require './bird.rb'
require './cat.rb'

#num_gen = Random.new(100)

tasty_bird = Bird.new("Tweety")
pussy_cat = Cat.new("Sebastien",rand(100)+1)

iter = 0
while tasty_bird.is_alive
  iter += 1
  pussy_cat.catch_bird?(tasty_bird)
  puts "Attempt #{iter}"
end
puts "#{tasty_bird.name} got eaten by #{pussy_cat.name}"
