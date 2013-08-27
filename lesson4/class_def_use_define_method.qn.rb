word = "bark"

class Dog
  def initialize(name)
    
    @name = name

  end

  def introduce_yourself
    puts @name
  end
end

rover = Dog.new("Rover")
stewie = Dog.new("Stewie")

kennel = [rover, stewie]
kennel[0].introduce_yourself
kennel[1].introduce_yourself

#kennel.each { |dog| dog.introduce_yourself { |n| puts "My name is \"#{n}\"" }}
