class Vehicle
  def initialize(input_options)
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :make, :model, :fuel

  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :type, :weight

  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new({ make: "Toyota", model: "Corolla", fuel: "gasolina" })
car1.honk_horn

bike1 = Bike.new({ type: "road", weight: 10 })
bike1.ring_bell
