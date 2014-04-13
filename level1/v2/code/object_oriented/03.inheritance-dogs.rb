class Animal
  def initialize(name="Anon.")
    @name = name
  end

  def name 
    return @name
  end

  def name=(inp)
      @name=inp
  end

  def speak 
    puts "Not sure what to say... What type of animal am I?"
  end

  def moves?
    return true
  end
end

class Dog < Animal
  # How would this change to make the animal also say its own name along with "Ruff"?
  def speak 
    puts "Ruff."
  end
end

# Introduce a class for mammals, that's "in between" Animal and Dog.

puppy = Dog.new("Rover.")

puts "Speak, " + puppy.name
puppy.speak
