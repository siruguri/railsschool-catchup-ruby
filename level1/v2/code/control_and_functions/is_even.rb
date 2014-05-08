# Write a block that will print all odd numbers in an array

# Example input
numbers = [8, 5, 67, 100]

# The answer is below
numbers.each do | number |
  if number.even? == false then
    puts "#{number} is odd."
  else # this implies that number.even? is true
    # do something when it's true
  end
end
