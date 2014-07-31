# You can also use blocks with strings, to go over each element, just
# as you do with arrays. EXCEPT you have to use each_char, rather than
# each:

# This will print each character in the string on a line by itself.

string = 'Programming is fun!'

string.each_char do |c|
  puts c
end

# Modify the above to only print the vowels in the string (each on a line by itself.)
