def shout_backwards(word)
	word.reverse.upcase + "!!!"
end

puts shout_backwards("whisper")

# FIXME: This is convoluted. Refactor for clarity.
def squared_primes(array)
  array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 }.map{|p| p*p}
end

print squared_primes([1, 4, 9, 5])
puts ''