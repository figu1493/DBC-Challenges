class Interface 
	attr_accessor :user_validation, :password_validation

	def initiate
		hospital = Hospital.new
		puts "Welcome to #{hospital.name}"
		puts "-------------------------------"
		login
	end

	def login
		employee = Employees.new
		
		puts "Please enter your username:"
		name_entry = gets.chomp
		employee.validate_user(name_entry)

		puts "Please enter your password:"
		password_entry = gets.chomp
		employee.validate_password(password_entry)
		
		if employee.validate_user(name_entry) != true && employee.validate_password(password_entry) != true
			validate
		else
			puts "This is invalid, please try again"
			login
		end
	end

	def options
		person = Employees.new
		puts "Welcome, #{person.user[0]}. You're access level is: #{person.title[0]}"
		puts "What would you like to do?"
		puts "Options:"
 		puts "- list_patients"
		puts "- view_records <patient_id>"
		puts "- add_record <patient_id>"
		puts "- remove_record <patient_id> <record_id>"
		chose_options
	end

	def chose_options
		option = gets.chomp
		if option.match("list_patients")
			patient = Patients.new
			puts patient.name
		else
		end
	end

	def validate
		puts "validated!"
		options
		# if @user_validation == false && @password_validation == false
		# 	puts "You have validated. Congrats!"
		# else
		# 	puts "This is invalid, please try again."
		# 	#hopital.login
		# end
	end
end


class Hospital < Interface
	
	def name
		"John Fig's Healthy Hospital"
	end
end


class Patients < Interface
	attr_accessor :patient

	def name
		@patient = ["Sickly Steve", "Nervous Nancy", "Bro Montana", "Siezure Sam", "Lupis Luke"]
	end
end


class Employees < Interface
	attr_accessor :user, :title, :password

	def user
		@user = ["John", "Nurse Betty", "Janitor Bob", "Dr. Doolittle"]
	end

	def title
		@title = ["Administrator", "Nurse", "Janitor", "Doctor"]
	end

	def password
		@password = ["password", "1234", "3333", "animal"]
	end

	def validate_user(name_entry)
		user.each do |x|
			if name_entry == x
				#puts "This is a match"
				true
				break if true
			else
				#puts "This is invalid"
			end
		end
	end

	def validate_password(password_entry)
		password.each do |x|
			if password_entry == x
				#puts "This is a match"
				true
				break if true
			else
				#puts "This is invalid"
			end
		end
	end
end

interface = Interface.new
interface.initiate

# quick push