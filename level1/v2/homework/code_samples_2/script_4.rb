# The File class can be used to understand more information about files.

# For example, the size of a file can be obtained with File.size() to which you pass the filename

file_sz = File.size("stats.csv")

puts "The size of the file is "
puts file_sz

# Use the above combined with script 3, to print out the size of each file in the current folder.
