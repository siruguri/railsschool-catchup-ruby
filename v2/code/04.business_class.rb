class Business 
  attr_accessor :name, :address

end

b1=Business.new
b1.name = 'Acme Rockets, Inc.'
b1.address = '123 Main St, San Francisco, CA 94101'

puts "#{b1.name} is located at #{b1.address}"

# Let's create some models out of classes - CityYP: a class that takes
# a list of businesses, and does some analysis on them, for example
# CityYP.number_of_locations

# Bonus! Let's do some inheritance - BusinessInMall
