class Person

  def initialize(name)
    @name = name
    @caffeine_level = 0
  end

  def run
    puts "Beat feet!"
  end

  def scream
    puts "AAAAAAAAAAHHHHHHH *gasp* HHHHHHHHH!"
  end

  def drink_coffee
    puts "Seasonal pumpkin spice beverage ingested. +5"
    @caffeine_level += 5
  end

end

class PowerRanger < Person
end

class EvilNinja
end
