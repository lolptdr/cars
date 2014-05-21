class Car
	@@repaint_count = 0

	def initialize(my_color)
		@my_color = my_color
	end

	def color
		@my_color 
	end

	def repaint_count
		@@repaint_count
	end

	def paint(my_color)
		@@repaint_count += 1
		@my_color = my_color
	end
end





c = Car.new("blue")
puts c.color # blue
puts c.repaint_count # 0
c.paint("red")
c.paint("green")
puts c.repaint_count # 2
puts c.color # green