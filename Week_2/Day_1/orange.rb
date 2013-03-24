
class OrangeTree
	attr_accessor :age
  attr_reader :tree, :height

  def initialize(age, height)
  	@age = age
  	@tree = tree
  	@height = height
  end

	def create_orange!
  		@orange = Orange.new(0, 5)
  end

  def age
  	@age
  end
end


class Orange
	attr_reader :count, :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(count, diameter)
  	@diameter = diameter
  	@count = count
  end

  def count
  	@count += 1
  	puts "This is the count: #{@count}"
  end

  def full_grown?
  	if @count == 10
  		return true
  	elsif @count < 10
  		return false
  	end
  end
end

tree = OrangeTree.new(0, 0)

tree.age_orange! #until @orange.full_grown?
tree.age_orange!

orange = Orange.new(0, 5)

orange.count until orange.full_grown?

# make the commit work

