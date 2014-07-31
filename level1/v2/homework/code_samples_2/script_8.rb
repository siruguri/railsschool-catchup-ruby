# This lesson is easiest if you use what you did in script 7.

# To solve this problem, you'll need a helper method, that returns the name of a folder's parent folder.

def parent_folder_name(child_folder)
  return "#{child_folder}/.."
end

def parent_is_bigger(folder_name)
  # This method should return true if the total size of entries in the
  # given folder's parent is greater than the size of all entries in
  # the folder itself, and false otherwise.

  # Hint 1: if you add the definition of the method from script 7, it'll be a lot faster to solve this.

  # Fill in the blanks here...

  total_sz_in_current_folder = # call the method from script 7 here
  parent = parent_folder_name( .. put something inside the parentheses .. )
  total_sz_in_parent_folder = # call the method again, with a different argument.

  if (... now write the rest of the conditional ...) then
    # ..
  else
    # ..
  end

end

