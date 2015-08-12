
# Procs are more forgiving than lambda
# Procs don't like 'return' inside its code
# lambdas can 'return'

my_lambda = lambda {puts "I'm a lambda"}
my_lambda1 = lambda {puts "I'm a lambda 1"}

puts my_lambda.call

def my_method(code,code1)
  puts ">>>> START"
  code.call
  code1.call
  puts ">>>> END"
end

def my_method2(*code)
  puts ">>>> START"
  code.each do |stuff|
    stuff.call
  end
  puts ">>>> END"
end
my_method(my_lambda,my_lambda1)
my_method2(my_lambda,my_lambda,my_lambda)

# Difference between procs and lambdas
lam = lambda {|x| puts "#{x}" }
lam.call("Hello") #will work
#lam.call          #will throw an exception

my_proc = proc {|x| puts "#{x}" }
my_proc.call("Hello") #will work
my_proc.call          #will work

# lambdas accept having return inside them, procs don't
lam = lambda {return}
lam.call # will work

my_proc = proc {return}
my_proc.call #will throw exception
