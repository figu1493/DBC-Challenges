class Person
  attr_accessor :nickname

  def initialize(nickname)
  	@nickname = nickname
  end

  def update!
    self.nickname = "boot"
  end

  def to_s
		puts "John's nickname is #{update!}"
	end
end

my_name = Person.new("john")

puts my_name