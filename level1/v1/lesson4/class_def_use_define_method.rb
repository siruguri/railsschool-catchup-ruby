word = "bark"

class Dog
  def initialize(name)
    
    @name = name

  end

  def introduce_yourself
    yield @name
  end
end

rover = Dog.new("Rover")
stewie = Dog.new("Stewie")

kennel = [rover, stewie]

kennel.each { |dog| dog.introduce_yourself { |n| puts "My name is \"#{n}\". #{word}!" }}
