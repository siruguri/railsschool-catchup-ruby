# When you run any program, it's current folder is the same one as
# where you ran it from - in RubyMine, that is the folder which
# contains the script. If you are using the command line, the
# program's current folder is the current folder of the command line,
# not of the file itself.

# Each folder has two special entries in it: the entry ".." (two dots)
# stands for the folder's parent, and the entry "." stand for the
# folder itself.

# This means that the following two statements are the same:

dir1 = Dir.open(Dir.pwd)
dir2 = Dir.open(".")

# Here dir1 and dir2 are objects that refer to the same folder.

# You can use the Dir class to navigate the folder structure.

parent_of_dir1 = Dir.open("..")

# This exercise has two parts.

# Part 1: How would you compute the number of entries in the parent folder of the current folder?

# Part 2: How would you now check whether the parent folder has more entries, or the current folder?
