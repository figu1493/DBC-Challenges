# A bunch of animals
# Define 7 empty classes: Animal Mammal, Amphibian, Primate, Frog, Bat, and Chimpanzee.

# Set up an inheritance structure that makes sense given the phylogenetic position of the animal in relation to the others.

# Add some properties
# Add instance variables and methods to your different classes. These could include things like @num_legs or warm_blooded?. Make up your own.

# The write a script to prove that your inheritance structure works. If you assign @num_legs = 2 in the Primate class, does an instance of Chimpanzee have the same variable and value?

# Hint: you may have to define some reader methods.

module SuperPowers
	attr_reader :use_laser_vision, :captain_planet

	def use_laser_vision
		puts "Can't hide from me with laser vision"
	end

	def captain_planet
		puts "bringing polution down to zero. Captain Planet!"
	end
end

class Animal
	def carbon_based?
		puts 'is carbon based'
	end
end

class Mammal < Animal
	def warm_blooded?
		puts 'is warm blooded'
	end
end

class Amphibian < Animal
	def cold_blooded?
		puts 'is cold blooded'
	end
end

class Primate < Mammal
	attr_reader :num_legs

	def num_legs
		@num_legs = 2
	end
end

class Frog < Amphibian
	include SuperPowers
	def eat
		puts "I eat flies"
	end
end

class Bat < Mammal
	include SuperPowers
	def hunt
		puts "I hunt vampires"
	end
end

class Chimpanzee < Primate

	def eat
		puts "I eat bananas"
	end
end

chimp = Chimpanzee.new
chimp.eat
puts chimp.num_legs
chimp.carbon_based?

puts ''

batty =  Bat.new
batty.hunt
batty.warm_blooded?
batty.carbon_based?
batty.use_laser_vision

puts ''

mr_frog = Frog.new
mr_frog.eat
mr_frog.cold_blooded?
mr_frog.carbon_based?
mr_frog.captain_planet



