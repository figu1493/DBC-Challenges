def roman_numerals(number)
		
		thousand = number
		while thousand >= 1000
			print "M"
			thousand -= 1000
		end

		thousand_remainder = thousand

		five_hundred = thousand_remainder
		while five_hundred >= 500
			print "D"
			five_hundred -= 500
		end

		five_hundred_remainder = five_hundred

		hundred = five_hundred_remainder
		while hundred >= 100
			print "C"
			hundred -= 100
		end

		hundred_remainder = hundred

		fifty = hundred_remainder
		while fifty >= 50
			print "L"
			fifty -= 50
		end

		fifty_remainder = fifty

		tens = fifty_remainder
		while tens >= 10
			print "X"
			tens -= 10
		end

		tens_remainder = tens

		fives = tens
		while fives >= 5
			print "V"
			fives -= 5
		end

		fives_remainder = fives

		ones = fives_remainder #tens_remainder
		while ones > 0 
			print "I"
			ones -= 1
		end	
		puts ''
end


roman_numerals(4)

roman_numerals(7)

roman_numerals(17)

roman_numerals(67)

roman_numerals(167)

roman_numerals(667)

roman_numerals(1100)


roman_numerals(1667)
