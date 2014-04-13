class Animal

  # How would you change the constructor to use a default name if none is given?
  def initialize(name)
    @name = name
  end

  def name 
    return @name
  end

  def name=(inp)
      @name=inp
  end
  def moves?
    return true
  end
end

organism = Animal.new("default")
puts "It's " + organism.moves? + " that the organism moves. Therefore, it's an animal."

pet = Animal.new("Roger")

puts "I called my pet " + pet.name + "."

pet.name = "Helen"
puts "But I didn't like that name so I changed it to " + pet.name + "."
