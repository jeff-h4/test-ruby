

my_arr = []
the_str = ""
for num in 1..100
  the_str = ""
  the_str = the_str + "FIZZ" if num % 3 == 0 
  the_str = the_str + "BUZZ" if num % 5 == 0 
  if the_str.length == 0
    my_arr.push(num)
  else
    my_arr.push(the_str)
  end
end
print my_arr
