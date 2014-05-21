class Car
	def to_s()
		"I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end

	def initialize()
		@fuel = 10
		@distance = 0
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}."
		@fuel = 10.0
	end
end

car_a = Car.new()
car_b = Car.new()
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b