class Person
attr_accessor :caffeine_level

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

# Need to add comments for methods
class PowerRanger < Person

  def initialize(strength, color)
    super
    @strength = strength
    @color = color
  end

  def punch(person)
    if @strength > 5
      person.scream
      person.run
      @caffeine_level -= 1
    end
  end

  def rest
  end

  def use_megazord(person)
    @strength = 5000
    punch(person)
  end

end

class EvilNinja < Person

  def initialize(strength, evilness)
    super
    @strength = strength
    @evilness = evilness
  end

  def punch(person)
    if @strength > 5
      person.scream
      person.run
      @caffeine_level -= 1
    end
  end

  def cause_mayhem(person)
    @caffeine_level = 0
  end

end
