def deaf_grandma
	x = 1
	while x > 0
		word = gets.chomp
		break if word == ""
		break if word == "I love ya, Grandma, but I've got to go" 
		if word == word.upcase
			puts "NO, NOT SINCE 1983!"
		else
			puts "HUH?! SPEAK UP, SONNY!"
		end
	end 
end

deaf_grandma
