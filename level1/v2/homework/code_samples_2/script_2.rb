# This exercise combines the previous one, with what you learned about defining methods.

def count_of_lines(handle)

# You have to define the method count_of_lines, which takes a file handle and returns the number of lines in the file.
# Note that the code in this method will be very similar to the code you wrote in Script 1.

end


fh = File.open("stats.csv")

# I want to count the lines in the file by passing the file handle to a method, like this - how do I do that?

puts count_of_lines(fh)

