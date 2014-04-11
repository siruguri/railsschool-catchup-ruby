class Animal
  def moves?

    # What happens if we return a Boolean true, instead of a string?
    return "true"
  end
end

organism = Animal.new
puts "It's " + organism.moves? + " that the organism moves. Therefore, it's an animal."

