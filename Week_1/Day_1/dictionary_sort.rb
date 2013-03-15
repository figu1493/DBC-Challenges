def dictionary_sort

	dictionary = []

	puts "Type a word:"
	word = gets.chomp
	dictionary << word

	puts "Type another word (or press enter to finish):"

	x = 1
	while x > 0
		another_word = gets.chomp
		puts "Type another Word (or press enter to finish):"
		break if another_word == ''
		dictionary << another_word
	end

	puts "Congratulations your dictionary has #{dictionary.count} words"
	puts dictionary.sort!
end

dictionary_sort