# This script and the next one essentially re-use all the concepts in
# this set of code sample. The job of this script is to check if there
# is a file with a given name, in the current folder. If so - it
# prints "Yes." Else, it prints "No."

def file_exists(filename)
  # This method should do all the work described above.

  # Hint: you'll need a block, first, to go through all the
  # files. Then inside the block, you need a conditional (if)
  # statement. 

end

# This should print Yes.
puts file_exists("script_9.rb")

# This should print No.
puts file_exists("script_not_exist.rb")
