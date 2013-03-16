def fib_iterative(n)
  curr = 0
  succ = 1
  n.times do |i|
    curr, succ = succ, curr + succ
  end
  puts curr
end

fib_iterative(1) 
fib_iterative(2) 
fib_iterative(3)
fib_iterative(4)
fib_iterative(5) 

puts ''

def fib_recursive(n)
  return  n  if n <= 1 
  fib_recursive( n - 1 ) + fib_recursive( n - 2 )
end

puts fib_recursive(1)
puts fib_recursive(2)
puts fib_recursive(3)
puts fib_recursive(4)
puts fib_recursive(5)
