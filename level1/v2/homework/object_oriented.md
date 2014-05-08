# Advanced Math

Write a method that takes two numbers and a string representing a mathematical operation, and performs the corresponding operation.

    puts "#{do_math(2, 3, '+')}" # prints 5
    puts "#{do_math(2, 3, '*')}" # prints 6
    puts "#{do_math(2, 3, '-')}" # prints -1
    puts "#{do_math(2, 3, '&')}" # prints Unknown Operation

# Sizing strings

Write a method that takes an array of strings and a number N, and prints those strings that are bigger than N

    list = ['cat', 'dog', 'elephant', 'lion', 'tiger', 'hippopotamus']
    strings_greater_than(list, 5) # This prints elephant and hippopotamus
    strings_greater_than(list, 3) # This prints everything except cat and dog

# Splitting strings

Write a method that takes a string, and returns a count of the occurrences of the letter 'e' in it

    puts count_es('sameer') # prints 2
    puts count_es('test') # prints 1
    puts count_es('rails') # prints 0

**Hint:** You should first convert the string to an array where each item in the array is a letter in the string - you can then use a `.each` block in which you increment a count by comparing each item in the array. Use the Internet to figure out how to convert a string to an array.

# Business class

Create a class definition that when added to the following code, will make it work:

    store = Business.new
    store.name = 'TechShop'
    store.address = '123 Main St.'
    store.display_info
    # This should display the following on the screen: TechShop is located at 123 Main St.

