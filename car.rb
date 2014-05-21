class Car
	def initialize # runs automatically when calling new object
		puts "the intialize method is running automatically"
		@fuel = 10
		@distance = 0
	end

	# def get_info(miles_driven,tank_left)
	# 	puts "I'm a car. I've driven #{miles_driven} miles and have #{@fuel-tank_left} gallons of gas left."
	# end

	def drive(miles_driven)
		total = miles_driven + @distance
		current_fuel = @fuel - miles_driven/20.0
		puts "#{total} miles driven, #{current_fuel} gallons left"

		if current_fuel <= 0
			puts "You're out of gas and need to fuel up."
		end
	end

	def fuel_up(current_fuel)
		cost = 3.53
		costtofill = (@fuel - current_fuel)*cost
		puts "$#{costtofill} to fill your tank"
	end


end