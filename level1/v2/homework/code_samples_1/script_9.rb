# In this exercise, you will learn to use a method without needing to know how it works.

# This method returns the last character in a string. We haven't yet
# learned the concepts here, but you shouldn't have to worry - just
# trust that the method works and understand what it does, then use it
# like you would a tool for a specific task. For example, you know
# that a steam iron will get the wrinkles out of your clothes, even
# though you don't know what's inside the steam iron.

# This returns the last character in any string
def last_character(t)
  if t and t.class == String
    return t[t.length-1]
  else
    return nil
  end
end

str1 = "cat"

# This will output the letter t
puts last_character(str1)

# Fill in the blanks to create a function that returns true if the last character is 'x'

def ends_in_x?(k)

# You need to fill in the blank and uncomment the next line
#  if ______ == 'x'
    return true
  else
    return false
  end
end

# This should return true
puts ends_in_x?('ajax')
# This should return false
puts ends_in_x?('mary')
