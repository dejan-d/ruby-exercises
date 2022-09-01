class Car
  WHEELS = 4      #class constant
  @@number_of_cars = 0 #class variable
  def initialize
    @@number_of_cars = @@number_of_cars + 1
  end
  def self.count
    @@number_of_cars
  end
  def mileage = (x)    #instance variable writer
    @mileage = x
  end
  def mileage   #instance variable reader
    @mileage
  end




class StrechLimo < Car
  WHEELS = 6 #class constant


  @@televisions = 1 #class variable
  def turn_on_television
    #invoke code for switching on on-board tv here

  end
end

class PontiacFirebird < Car
end

class VolksWagen < Car
end

if Car.count.zero?
  puts "No cars have been produced yet."
else
  puts "New cars can still be produced"
end

kitt = PontiacFirebird.new
kitt.mileage = 5667

herbie = VolksWagen.new
herbie.mileage = 33014

batmobile = PontiacFirebird.new
batmobile.mileage = 4623

larry = StrechLimo.new
larry.mileage = 20140


unless kitt.is_a?(StrechLimo)
  puts "This car is only licenced to seat two people"
end

puts "Service due!" unless kitt.mileage < 25000


while Car.count < 10
  Car.new
  puts "A new car instance was created"
end

until Car.count == 10
end

my_new_car = Car.new

for car in [kitt, herbie, batmobile, larry]
  puts car.mileage
end


