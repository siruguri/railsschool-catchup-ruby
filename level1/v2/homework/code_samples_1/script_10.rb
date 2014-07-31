# Even more methods: We will extend what we learned to methods with more than one argument

# Remember, this method returns true or false, checking if a string starts with the letter 'a'

def starts_with_a?(s)
  if s[0]=='a'
    return true
  else
    return false
  end
end

# To write a similar method that checks if a string starts with 'b', or 'c', we would have to keep repeating the above code. Instead, let's write an even more general method, called starts_with? 

def starts_with?(s, starting_char)
  if s[0] == starting_char
    return true
  else
    return false
  end
end

# Exercise: write a similar method, ends_with?, which takes two inputs, a string and a character, and checks if that string ends in that character.

# This should return true.
puts ends_with?("abcd", 'd')

# This should return false.
puts ends_with?("acdc", 'm')
