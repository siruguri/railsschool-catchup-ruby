# The following script assumes that there's a file called stats.csv and then does some processing on it.

f = File.open("stats.csv")

lines = f.readlines()

lines.each do |l|
  puts "The size of the line is"
  puts l.size
end

# Note that if you change stats.csv then this program won't work because there's no file to open.

# How can you change this program so that the above statements are only run, IF the file exists in the folder?

# Hint: You will have to enclose all those lines inside an if statement, and use what you did in script 9.
