class Car 
	@@total_car_count = 0
	@@cars_per_color = {}

	def initialize(color='blue')
		@color = color
		@@total_car_count += 1
		if @@cars_per_color.include?(color)
			@@cars_per_color[color] += 1
		else
			@@cars_per_color[color] = 1
		end
	end
	def self.total_car_count # self.total_car_count method belongs to class, not instance
		@@total_car_count
	end
	def self.cars_per_color
		@@cars_per_color
	end
	def color=(value)
	# Check to see if current color matches new color, otherwise keep color
		if @color != value
			@@cars_per_color[@color] -= 1
			@color = value
			@@cars_per_color[@color] += 1
		else
			@color
		end
	end	
	def self.most_popular_color
		@@cars_per_color.each do |k,v|
			if v == @@cars_per_color.values.max
				puts k
			end
		end
	end

end

class ConvertibleCar < Car
	attr_accessor :roof_status
	def initialize(convertible='true')
		super(color='blue')
		@convertible = convertible
		if @convertible
			@roof_status = 'closed'
		end
	end
	def top_down
		if @convertible
			@roof_status = 'open'
			puts "Top down"
		end
	end
	def close_top
		if @convertible
			@roof_status = 'closed'
			puts "Closed top"
		end
	end	
end