This homework is a review of Ruby programming basics - manipulating variables, using Arrays and Hashes, and the `.each` method for iterating over items in an Array or a Hash. 

# Review

In this section, you should be able to answer all questions based on your notes, and based on the question.

1. The [Ruby documentation for the method `.drop`](http://ruby-doc.org/core-2.0/Array.html#method-i-drop) describes it as follows: ".drop(n): Drops first n elements from the array and returns the rest of the elements in an array". How would you use `.drop` to remove the elements `"a"` and `"b"` from the array `["a", "b", "c", "d"]`?
1. If `l1 = []`, then `l1.length()` will return the value _________________.
1. The method `.abs()` returns the ["absolute value"](http://en.wikipedia.org/wiki/Absolute_value) (or modulus) of a number. So, `-1.abs()` is `1`. If `x` and `y` are two arrays, how would you use `.abs()` to determine the difference of their lengths? That is, fill in the missing line here:

        # Assume x and y are already defined, in the form x=[1, 2, "a"]
        diff_size = _____________________ # Fill this in here
        puts "The difference in the lengths of the two arrays is #{diff_size}"
   Note that this should work regardless of whether `x` is the smaller or larger array.
1. If `s` and `t` are two Strings, then `s+t` is the String formed by "concatenating" them - that is, joining them together. So for example, if you concatenate the string `"can"` and `"did"`, you get the string `"candid"`. If you first ran the following code:

        s1 = 'part'
        s2 = 'y'
        total = (s1+s2).length()
        puts total

    then the output will be ____________________.
1. Just as expressions can evaluate to a number, Array or String, they can also evaluate to a Boolean value, if you perform a "conditional operation" - that is, either `true` or `false`. For example the expression `(1>2)` is a conditional, that checks _if_ 1 is greater than 2, and will evaluate to `false` because 1 is not in fact greater than 2. In the following code:

        s1 = 'part'
        s2 = 'y'
        check_length = (s1+s2).length() > 8
	puts check_length

    the output will be ____________________.
1. What is the output of the following code?

        info = { "address" => "123 Main", "business" => "IBM" }
        list_of_keys = info.keys()
        list_of_keys.each { |k| puts k.length() }
1. The output from the following program is `[-3, -4, -6]` - you can check that by running the code (for example, in Ruby Mine) - answer the following questions based on this code:
   
        y=[]
        x=[1,2,-3,-4,5,-6,7]
        x.each { |item_of_x| if (item_of_x < 0) then y << item_of_x end }
        puts y

   1. To make the output be `[1, 2, 7]`, you would change ___________________ to ___________________.
   1. To make the output be [2, 4, -6, -8, 10, -12, 14], you would change the line `if  (item_of_x < 0) then y << item_of_x end` to ___________________.


# Self-Learning

In this section, you will need to refer to the Internet for additional information regarding how to manipulate Arrays and Hashes in Ruby.

