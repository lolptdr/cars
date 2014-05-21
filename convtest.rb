require_relative 'jtcars'

puts Car.total_car_count
c1 = Car.new('red')
puts Car.total_car_count
c2 = Car.new('black')
puts Car.total_car_count
# best_color = Car.most_popular_color # notice method using class, not instance
# c0 = Car.new(best_color) # same as `Car.new(Car.most_popular_color)`
c3 = Car.new
c4 = Car.new('black')
c5 = Car.new('mint green')
puts Car.cars_per_color
puts Car.total_car_count
c5.color = 'black'
puts Car.cars_per_color
puts Car.total_car_count
puts Car.most_popular_color #black; {'red'=>1, 'black'=>3, 'blue'=>1, 'mint green'=>0

c6 = ConvertibleCar.new
puts c6.roof_status # closed
puts c6.close_top # "Closed top"
puts c6.top_down # "Top down"
puts c6.roof_status # open