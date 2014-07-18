# Because each element of matrix1 is an array itself, we can call the method "each" on each element of matrix1.

# For now, let's start with this code:

matrix1 = [ [1,2], [-5, 6], [10, 12] ]

# Observe what happens when you run this.

matrix1.each do |row1|
  row1.each do |x|
    puts x
  end
end

# How would you only print those elements that are even?

matrix1.each do |row1|
  row1.each do |x|
  # This is where you have to do something.
  end 
end

# Bonus: how would you do the same as above, but this time by replacing the use of "each" with a call to "select"?
