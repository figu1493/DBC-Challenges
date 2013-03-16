def pig_latin(word)
	
	single_word = word.split.to_a
	finished_array = []

	# Logic to wrap multiple words
	single_word.each do |single_word|

		# logic for single word pig latin
		new_word = single_word.to_s.split(//).to_a

		if new_word[0].match(/[aeiou]/)
			finished_array << new_word.join.to_s + "way"
		else
			count = 0
			new_word.each do |x|
				break if x.match(/[aeiou]/)
				if x.match(/[bcdfghjklmnpqrstvwxyz]/)
					 new_word.push(x)
				end
				count += 1
			end
			new_count = count - 1
			new_word.slice!(0..new_count)
			finished_array << new_word.join.to_s + "ay"
		end
	end
	finished_array.join(' ').to_s
end

print pig_latin("john is thinking")
puts ''
print pig_latin("john")
puts ''
# print pig_latin("think")
# puts ''
# print pig_latin("sport")
# puts ''