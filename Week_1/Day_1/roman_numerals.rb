def roman_numerals(number)
	if number >= 1000
	elsif number < 1000 && number >= 500
	elsif number < 500 && number >= 100
	elsif number < 100 && number >= 50
	elsif number < 50 && number >= 10
	elsif number < 10 && number >= 5
	else
		ones = remainder
		while ones > 0 
			print "I"
			ones -= 1
		end	
end

roman_numerals(4)