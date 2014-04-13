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

class Mammal < Animal
  def has_spine?
    return true
  end
end

class Dog < Mammal
  def speak 
    puts "Ruff, my name is #{@name}."

    # How can the dog check if it's a mammal?
  end
end
