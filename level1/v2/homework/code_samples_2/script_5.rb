# This exercise is almost the same as the previous one, except now let's print out the total size of all files in the 
# current folder, rather than the size of each file. You'll also have to use the concepts you learned in script 2.
# I'll start you off here:

current_folder = Dir.pwd

dir_handle = Dir.open(current_folder)

dir_content = dir_handle.entries

# Now you have to fill in the rest.
