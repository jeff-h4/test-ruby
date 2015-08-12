
# block_given? seems to be a built-in function.
def my_method

  puts "Hello"
  yield if block_given? # this will execute the block given to the method
  puts "Bye"
end

def greeting
  puts " >>> START"
  name = "Tam"
  yield(name)
  puts " >>> END"
end

my_method do
  puts ">>>>>>>>>>>"
  puts "Calling BLOCK with Do/END"
  puts ">>>>>>>>>>>"
end

my_method { puts " >>>>>>>>> CALLING WITH {}"}

my_method

greeting do |name|
  puts "Hello #{name}"
end

greeting do |n|
  puts "Bye #{n}"
end
