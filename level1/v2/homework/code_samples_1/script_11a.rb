# We will provide a method called slice, for use in this
# exercise. Again, don't be too concerned about the code itself -
# understand what it does, from the comment supplied in the method
# definition. The aim of this exercise is to get comfortable with
# knowing how to read documentation to re-use existing methods.

def slice(array, m, n)
  # Returns ALL the elements of an array from index m to index n, as a new array.
  # Returns nil if the indexes are invalid. 

  if array.class != Array or m<0 or n<0 or m > array.size-1 or m > n or n > array.size-1
    return nil
  end
  
  return array[m..n]
end

a1 = [2, 6, 4, 1, 5, 10]

# As an example of how slice is used, note that this will print the 2nd and 3rd elements, that is 6 and 4 above.
sl = slice(a1, 1, 2)
puts sl

# Exercise a: use slice and to print one half of an array. Note that
# you don't have to use slice for this, but you are required to do so
# in this exercise.

# Hint: fill in the blank here, replacing the ... part. What you have to figure out is - what array indexes do you pass to slice that represents the first half of all of its elements. Note - your program shd work no matter what the value of a1 is.

first_half = slice(a1, ...)

puts first_half

