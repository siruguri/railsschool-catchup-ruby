class Dog
    def initialize(name)

        @name = name

    end

    def introduce_yourself

        puts "Bark! Woof, woof \"#{@name}\". Bark yap."

    end

end

rover = Dog.new("Rover")
rover.introduce_yourself
