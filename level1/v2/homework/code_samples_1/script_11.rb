# We will provide a method called slice, for use in this exercise. Again, don't be too concerned about the code itself.

def slice(array, m, n)
  # Returns ALL the elements of an array from index m to index n, as a new array.
  # Returns nil if the indexes are invalid. 

  if array.class != Array or m<0 or n<0 or m > array.size-1 or m > n or n > array.size-1
    return nil
  end
  
  return array[m..n]
end

# Exercise: use slice, to write code that, starting with an array,
# finds out if the sum of the numbers in the first half of the array
# is less or more than the sum of the numbers in the second
# half. Assume the array has an even number of elements, and they are all numbers.

# For example, if you started with the array below, the answer would be "second half sum is larger (16 vs 12)"

# Note - your program shd work no matter what array I use here.
a1 = [2, 6, 4, 1, 5, 10]

# Hint: create separate arrays for the first and second halves using the method above.

first_half = slice(a1, ...)
second_half = slice(a1, ...)

# Then write blocks on each of the new arrays to compute sums.

