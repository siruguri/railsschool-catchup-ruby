# More methods: We will practice writing more methods.

# This method returns true or false, checking if a string starts with the letter 'a'

def starts_with_a?(s)
  if s[0]=='a'
    return true
  else
    return false
  end
end

puts starts_with_a?('abcd') # This will print true
puts starts_with_a?('1324') # This will print false

# We want to write a similar method that checks if a string starts with the sequence 'ab' - fill in the blanks

def starts_with_ab?(s)

# You need to fill in the blank and uncomment the next line
#  if s[0]=='a' and s[___]=='b'
    return true
  else
    return false
  end
end

# This should return true when you run this script
puts starts_with_ab?("abcd")

# This should return false when you run this script
puts starts_with_ab?("acd")
