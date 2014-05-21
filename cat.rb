class Cat
  attr_reader :name, :age, :hungry, :mood

  def initialize(name, age)
    @name = name
    @age = age
    @hungry = true
    @mood = 'pensive'
  end

  def purr
    puts "purrr"
  end
end

class Tiger < Cat
  attr_reader :striped

  def initialize(name, age, striped = true)
    super(name, age)
    @striped = striped
  end
end

shnoo = Tiger.new("Shnoo", 10, false)

puts shnoo.striped

# these all work now since we used 'super'
puts shnoo.name
puts shnoo.age
puts shnoo.hungry
puts shnoo.mood