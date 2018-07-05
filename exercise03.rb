class Vehicle
  attr_reader :model
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
	@@numins = 0
  def initialize(model, year)
    super
    @@numins += 1
	end

  def self.cantidad
    @@numins
  end

  def engine_start
    super
    print 'El motor se ha encendido'
  end

end

10.times do |i|
  model = "modelo#{i+1}"
  year = 2000 + i
  Car.new(model, year)
end

print Car.cantidad
