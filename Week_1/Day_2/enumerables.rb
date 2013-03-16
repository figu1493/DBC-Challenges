# Print the 1st, 3rd, 5th, 7th, etc. elements of a list on separate lines.
def print_odd_indexed_integers(array)
  array2 = []
  array.each_with_index do |item,index| 
    if (item %2 == 0)  
      array2.push(item) 
    end
  end
  array2
end

print print_odd_indexed_integers([1,2,3,4,5,6,7,8,9])


# Return the odd numbers from a list of integers.
def odd_integers(array)
	array2 = []
  array.each_with_index do |item,index| 
    if (item %2 == 1)  
      array2.push(item) 
    end
  end
  array2
end

print odd_integers([1,2,3,4,5,6,7,8,9])

# Return the first number from an Array that is less than a particular number - 'limit.'
def first_under(array, limit)
	array.index {|x| x < limit}
end

print first_under([13,14,9,15,16,1], 10)

# Take an Array of Strings and return a new Array with an exclamation point appended to each String.
def add_bang(array)
	array.collect {|x| x + "!" }
end

print add_bang(["a", "b", "c"])

# Calculate the sum of an Array of numbers.
def sum(array)

end

# Reorganize an Array of the elements into groups of 3, and then sort each group alphabetically.
def sorted_triples(array)
end