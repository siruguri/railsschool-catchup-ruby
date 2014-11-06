# Exercise: Similar to 12, assume  you are given populations of cities, in decreasing order, in an array, like this: 

# For this exercise, we'll provide a method called 'sum' for your
# convenience - given an array, it returns the sum of all the elements
# in the array. It assumes all elements are numeric.

def sum(input)
  output = 0
  input.each do |x|
    output += x
  end
  
  output
end

populations = [1007812, 858910, 800781, 762000, 556885, 364378, 198765, 17622]

# Your goal is to determine what is the least number of cities,
# counting down from the most populous, that make up more than 90% of
# the total population of all cities. Remember that when you do
# division with integers, you have to first convert them to floats
# with .to_f, otherwise you'll get rounding errors.


