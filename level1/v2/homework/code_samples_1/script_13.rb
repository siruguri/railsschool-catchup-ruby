# In this exercise, we'll manipulate an array whose elements are arrays.

# For example, we might define an array like this:

x = [ [5, 7], [2, -9, -7, 4], [6, -1, 2], [-5, 20] ]

# Each element of x is an array, so for example you can get the size of each element.

x.each do |inner_array|
  puts "The size of the array is "
  puts inner_array.count()
end

# The following code counts how many of the arrays in x have an odd first element

count_of_odds = 0
x.each do |inner_array|
  if inner_array[0].odd?
    count_of_odds = count_of_odds + 1
  end
end

puts "There were "
puts count_of_odds
puts " odd first numbers among the elements of x."

# You should be able to do these exercises by making minor modifications to the above code. 

# Exercise: How would you change the above to count how many of the inner arrays have an odd LAST element?

# Exercise: how would you change the above to compute the sum of all even first elements in the inner arrays?


