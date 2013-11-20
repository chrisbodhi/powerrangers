require './combat.rb'

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
include Combat #the module Combat from the combat.rb file

# Initializes the instance, pulling the name variable assignment
# from the Person parent class.
  def initialize(name, strength, color)
    super(name)
    @strength = strength
    @color = color
  end

# Increases the strength by two points, reports the new strength level.
  def rest
    @strength += 2
    puts "Whew. Strength now to #{@strength}."
  end

# Utter mayhem that, as a method, deserves to be fleshed out.
  def use_megazord(person)
    @strength = 5000
    punch(person)
  end

end

class EvilNinja < Person
include Combat #the module Combat from the combat.rb file

# Initializes the instance, pulling the name variable assignment
# from the Person parent class.
  def initialize(name, strength, evilness)
    super(name)
    @strength = strength
    @evilness = evilness
  end

# Drains a person's caffeine level to zero.
  def cause_mayhem(person)
    @caffeine_level = 0
  end

end

# Defines a method which creates instances of the classes and runs their methods.
def fight_scene
  
  bobby = PowerRanger.new('Bobby', 15, 'blue')
  kim = PowerRanger.new('Kim', 25, 'pink')

  hanzo = EvilNinja.new("Hanzo", 7, 100)
  bill = EvilNinja.new("Bill", 17, 1000)

  johndoe = Person.new("John Doe")
  janedoe = Person.new("Jane Doe")

  janedoe.drink_coffee
  johndoe.drink_coffee

  bill.punch(janedoe)
  hanzo.punch(johndoe)

  bobby.rest
  kim.rest

  kim.punch(hanzo)

end

# Calls the action method to create classes and run their methods.
fight_scene
