class Business

  def initialize(x, y)
    @name=x
    @address=y
  end

  def name
    return @name
  end 
  def address
    return @address
  end 

  def name=(arg1, arg2)
    @name = arg1 + arg2
  end

  def print_greeting(mesg)
    puts mesg
  end

end

b1=Business.new('Acme Rockets, Inc.', '123 Main St San Francisco, CA 94101')

puts "#{b1.name} is located at #{b1.address}"

b1.name=('new name', 'x')

puts "#{b1.name} is located at #{b1.address}"

# Let's create some models out of classes - CityYP: a class that takes
# a list of businesses, and does some analysis on them, for example
# CityYP.number_of_locations

# Bonus! Let's do some inheritance - BusinessInMall
