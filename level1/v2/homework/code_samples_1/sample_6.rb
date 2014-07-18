# In this and the following sample, we are going to figure out how to "nest" blocks within each other. 

# For now, let's start with this code:

matrix1 = [ [1,2], [-5, 6], [10, 12] ]

# Note that each element of matrix1, which is an array, is also an array.

matrix1.each do |row1|
  puts row1.length
end

# How would you output all the items in the first column of the above matrix (in this case, the numbers 1, -5 and 10)?

matrix1.each do |row1|
  puts row1 # You have to add something here
end
