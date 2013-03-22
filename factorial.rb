def factorial_iterative(number)
	product = 1
	while number > 1
		product *= number
		number -= 1
	end
	product
end

puts factorial_iterative(3)
puts factorial_iterative(4)
puts factorial_iterative(5)

puts ''

def factorial_recursive(n)
	return  n  if n <= 1 
  factorial_recursive( n - 1 ) * n
end

puts factorial_recursive(3)
puts factorial_recursive(4)
puts factorial_recursive(10)