# We will combine the concept of a method with what we know about
# string here. I want to define a method that takes TWO arguments, a
# string and a number:

def nth_character(str, n)
  # This method should return the nth character - but NOTE, NOT the nth index. Be careful.

  nth_char = # Something goes here

  return nth_char

end

input = 'Ruby rocks!'
puts "The 2nd character is"
puts nth_character(input, 2) # This should print 'u'
