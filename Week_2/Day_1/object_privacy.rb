class BankAccount

	attr_accessor :customer_name, :type, :acct_number
	attr_reader :acct_number 

	# initialize method is a setter
	def initialize(customer_name, type, acct_number)
		@customer_name = customer_name
		@type = type
		@acct_number = acct_number
	end

	def hide_account
		@acct_number.gsub(%r/\d\d\d[-]\d\d\d/, "***-***")
	end

	def to_s
		puts "#{@customer_name}: #{@type}##{hide_account}"
	end
end

my_acct = BankAccount.new("Junipero Serro", "Checking", "347-923-239")

puts my_acct