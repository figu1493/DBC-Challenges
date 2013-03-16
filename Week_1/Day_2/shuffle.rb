def shuffle(array)
	new_array = []
	while array.length > 0
		number = rand(array.length)
		new_array << array[number]
		array.delete_at(number) 
	end
	new_array
end

print shuffle([1,2,3,4,5,6,7,8,9,10])