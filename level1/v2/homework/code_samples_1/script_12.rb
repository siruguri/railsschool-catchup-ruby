# We will continue using functions already given to us, in this exercise, to solve various problems.

# We will provide a method called slice, for use in this exercise. Again, don't be too concerned about the code itself.

def slice(array, m, n)
  # Returns ALL the elements of an array from index m to index n, as a new array.
  # Returns nil if the indexes are invalid. 

  if array.class != Array or m<0 or n<0 or m > array.size-1 or m > n or n > array.size-1
    return nil
  end
  
  return array[m..n]
end

# Exercise: imagine you are given populations of cities, in decreasing order, in an array, like this:

populations = [1007812, 858910, 800781, 762000, 556885, 364378, 198765, 17622]

# Your goal is to determine if the top 2 most populated cities have more people than the bottom 4 (Assume there are at least 6 cities.) Your program should print YES, if so; else, print NO.
