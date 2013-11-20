module Combat

# To be called only by PowerRanger and EvilNinja classes.
# Triggers Scream and Run methods on the target Person class instance.
# Decreases the target's Caffeine Level by one.
  def punch(person)
    if @strength > 5
      person.scream
      person.run
      @caffeine_level -= 1
    end
  end

end