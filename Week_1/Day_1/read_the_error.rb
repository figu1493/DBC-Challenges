# Change value of sample_avg to not throw error

def mean(numbers)
  sum = numbers.inject(:+)
  
  return sum / numbers.length
end

# This will throw an error. Change this line so that it works.
sample_avg = mean([5, 3, 6, 10])
puts sample_avg

# Change method to not throw error: splat operator

def mean(*numbers)
  sum = numbers.inject(:+)
  
  return sum / numbers.length
end

# This will throw an error. Change this line so that it works.
sample_avg = mean(5, 3, 6, 10)
puts sample_avg

def print_and_sort(array)
  output_string = ""
  new_array = []
  array.each do |element|
    
    new_array << element.to_s
    output_string = output_string + " " + element.to_s
  end
  puts output_string
  new_array.sort
end

print print_and_sort(["2", 1, "5", 4, "3"])