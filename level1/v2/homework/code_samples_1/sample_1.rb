# This method decides if a number is non-negative or not

def is_positive?(input)
  if input < 0 
    return false
  else
    return true
  end
end

# You can use this method like this, for example

x = 5
check_x = is_positive?(x)

# This will outputs true because x in this case is non-negative.
puts check_x

# Your assignment is to fill in the following so that you get true/false outputs for each item of the
# array number_list

# Remember that your answer should not assume this specific set of numbers. It should work even if there
# are different numbers in this array.
number_list = [-9, 6, 9, 0, 4, -32, -1, 5]

number_list.each do |num|

# What will you fill in here? Hint: it's a puts statement and a method call

end
