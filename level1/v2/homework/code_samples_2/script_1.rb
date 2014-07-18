# The File.open method return a "file handle" on which you will conduct all your read and write operations. 

fh = File.open("stats.csv")

# You can read all the lines into an array, that is as large as there are lines in the file, from the filehandle by calling
# the method readlines

all_lines = fh.readlines

# How do you get the number of lines in the file?

puts # all_lines ... <something goes here>
