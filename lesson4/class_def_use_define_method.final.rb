class Dog
  def initialize(name)

    @name = name

  end

  define_method("introduce_yourself") do
    puts "Bark! Woof, woof \"#{@name}\". Bark yap."
  end
end

rover = Dog.new("Rover")
rover.introduce_yourself

stewie = Dog.new("Stewie")

kennel = [rover, stewie]

kennel.each { |dog| dog.introduce_yourself }

# kennel.each { |dog| 10.times { dog.introduce_yourself } }

# def intro_n_times(dog, n)
#  n.times do
#    dog.introduce_yourself
#  end
# end

