class Person

  # Initialize the instance. Name is the only parameter taken. Caffeine level is
  # set to a default of zero.
  def initialize(name)
    @name = name
    @caffeine_level = 0
  end

  # Puts a statement related to running.
  def run
    puts "Beat feet!"
  end

  # Puts a statement about screaming.
  def scream
    puts "AAAAAAAAAAHHHHHHH *gasp* HHHHHHHHH!"
  end

  # Puts a statement about coffee, increments the caffeine level by 5.
  def drink_coffee
    puts "Seasonal pumpkin spice beverage ingested. +5"
    @caffeine_level += 5
  end

end

class PowerRanger < Person

  def initialize
    super
  end

end

class EvilNinja < Person

  def initialize
    super
  end

end
