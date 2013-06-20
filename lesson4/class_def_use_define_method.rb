class Dog
    def initialize(name)

        @name = name

    end

    define_method "introduce_yourself" do 
        puts "Bark! Woof, woof \"#{@name}\". Bark yap."
    end

end

rover = Dog.new("Roverx")
rover.introduce_yourself
