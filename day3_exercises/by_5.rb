

def by_five?(num)
  num % 5 == 0
end

for n in (1..5) do
  x = rand(100)
  puts x
  print by_five?(x)
  puts ""
end
