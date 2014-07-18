# Similar to opening a file to read its contents, you can open a folder to read its contents.

# When you run a Ruby script, it keeps track of which folder the script is in. That folder is called the 
# Present Working Directory, or 'pwd` for short.

# To access the folder the script is in, you can first get the PWD:

current_folder = Dir.pwd

# And then you open it for reading the list of files using open

dir_handle = Dir.open(current_folder)

# Analogous to readlines for getting all lines in a file, the method for getting a list of content in a folder
# is entries

dir_content = dir_handle.entries

# Now, how would you print out the content of the folder? Hint: because dir_content is an array, you have to use
# an each block to get that list.
