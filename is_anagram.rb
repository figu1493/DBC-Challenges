
# Fix me, needs work
def is_anagram?(one, two)
	new_one = one.split(//).to_a
	new_two = two.split(//).to_a
	new_array = []

	new_one.each do |x|
		if new_two.each do |y|
			break if y != x
			puts "false"
			end
		else
		end
		puts x
	end
	print new_array
end

is_anagram?("iceman", "cinema")
puts ''