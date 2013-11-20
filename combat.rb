module Combat

  def punch(person)
    if @strength > 5
      person.scream
      person.run
      @caffeine_level -= 1
    end
  end

end