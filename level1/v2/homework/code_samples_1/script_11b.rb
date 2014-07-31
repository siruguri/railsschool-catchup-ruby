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

# In Exercise a, you figured out how to get the first half of an array, using slice.
first_half = slice(a1, ...)

# Exercise b: Use the array stored in first_half to now calculate the sum of all numbers in the first half of a1.

