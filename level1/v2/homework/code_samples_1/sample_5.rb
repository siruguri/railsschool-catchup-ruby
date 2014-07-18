# This sample introduces a new array method called "select"

# Select is similar to each, in that it takes a block. The difference
# is that each looks at each element of an array, but doesn't create
# anything new - select will look at each element, and if the block
# returns true, will add that element to a new array that is created
# by select.

# The return value of the block is the last evaluated expression in that block.

# For example, this call to select creates an array with even numbers only from the input array - the last evaluated 
# expression is either the one in the first or in the second conditional section.

array1 = [9, 6, 19, 100, 41, 32, 19, 56]

array2 = array1.select do |array_elt|
  if array_elt.even?
    # The block will evaluate its last expression, either here ... 
    true
  else
    # ... or here.
    false
  end
end

# Note that we stored the new array that select returned in the variable array2.
# This output will be only the even numbers, if any.
puts array2

# Write a similar block using select that outputs only the positive numbers
first_list = [-9, 6, 9, 0, 4, -32, -1, 5]

# This should output only the positive numbers.

second_list = first_list.select do |i|
# ... start filling in from here by observing the previous usage of select

end

puts second_list
