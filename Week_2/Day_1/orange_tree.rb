# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end
 
class OrangeTree
  attr_accessor :age
  attr_reader :tree, :height, :oranges

  def initialize(age, height, oranges)
  	@age = age
  	@tree = tree
  	@oranges = oranges
  	@height = height
  end

  def age!
  	@age += 1
  	self.height! until @height == 15
  	if @age >= 5
  		self.create_orange!
  	end
  	# puts "This tree is #{@age} years old and has #{@oranges} oranges"
  end

  def create_orange!
  	@oranges += 50
  	@orange = Orange.new(rand(6))
  end

  def age
  	@age
  end

  def height!
  	@height += 3
  end

  def height
  	@height 
  end
 
  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
  	if @oranges > 0 
  		return true
  	else @age <= 0
  		return false
  	end
  end

  def dead?
  	if @age > 10
  		return true
  	else @age <= 10
  		return false
  	end
  end
 
  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    @oranges -= 1
    # puts "I am picking an orange number #{oranges}"
  end
end
 
class Orange
	attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
  	@diameter = diameter
  end

  def avg_diameter
  	@diameter
  end
end


tree = OrangeTree.new(0, 0, 0)

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

  avg_diameter = @diameter

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"


