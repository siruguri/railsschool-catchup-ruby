# For each element of an array, I want to determine if it's a number or string. I'll do this in two steps, each of which you have to complete.

# One, I'll write a method that checks the type of a given argument and returns the type as a string. You have to fill in one line and uncomment two.

def type_of_input(x)

  # Remember that the .class method tells you the type of a variable.
  if (x.class == Fixnum) then
    return "number"
  # elsif (x.class == ** fill in something here **) then
  # To make this work, you have to figure out what Ruby type is a string, just as it calls numbers Fixnum
  # return "string"
  end
end

# The second step is to use the above method in a block that goes over
# each element of a given array. Notice that strings are enclosed in
# quotes.

strings_and_numbers = [9, '6', 'word', 'r', 41, 'two words!', 'Step #5', 56]
strings_and_numbers.each do |element|
  # ** fill in here to output either the word string or number
end

