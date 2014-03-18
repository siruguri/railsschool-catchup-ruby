# Naming Data

To refer to pieces of data, programming languages use _variables_, which is the word for the names we give to data.

Most programming languages will have "out-of-the-box" support for a couple of simple data types, like integers and strings of text. They will also have a way to manage collections of data.

## Simple Types in Ruby

The simplest data types in Ruby are:

*   Integers: Anything written as a number is assumed to be one, and you can perform most simple operations on them, for example, add, multiple, take the square of, and so on

        a=3
        b=a*2
        puts b
        ==> 6

*   Text: Text is usually represented by enclosing it in double- or single-quotes. In Ruby, you can concatenate string together using the `+` symbol.

        first_name="Bill"
        last_name='Clinton'
        full_name=first_name + last_name
        ==> BillClinton

In these examples, you can see how variable values are substituted and
assigned. The variable that is assigned to is on the left side of the
`=` symbol (or what is also referred to as the `=` *operator*). Ruby will start by reading the expression to the right of
the `=` and "compute" it - that is, substitute values for the variable
names, and perform whatever operation is requested.

Note also that, like in most languages, variable names follow certain rules in Ruby:

* They can't contain spaces.
* They can't start with numbers.
* They usually only have alphanumeric characters and the underscore ("_") character. (Any other characters in a variable name means that the data will behave in certain special ways so avoid using those characters until you've learned what these special behaviors are.)

## Collections in Ruby

Collections of data are simple ways of keeping related pieces of
information together, instead of having a new name for each one. For
example, suppose you have a roster of names that you are reading from
a file, one name to a line. Rather than have a separate variable for
each name, you'd prefer to refer to them by a single variable that
represents the entire roster and then have each name indexed by a
number. The number that forms the index corresponds to the line number
in the file that the name is at.

This behavior is what defines a *collection*: that there is a variable
name representing the entire collection, and an index that identifies
a specific member of that collection.

There are two types of collections that are used in most languages:

* Arrays: Arrays are collections in which the index used to identify a member is an integer. Arrays in most languages are indexed by sequential numbers, and start at index 1. So if you have 5 elements, they will have the indexes 0 through 4. Array indexes have to be sequential - you can't have two members indexed at positions 5 and 12, for example, without also having 11 other members indexed at 0, 1, 2, and so on all the way through 11.

    In Ruby, arrays are initialized using the `[ ]` operator, like so:

        names = ['Hillary', 'Bill', 'Clinton']

    And individual members are assigned and also retrieved with the `[ ]` operator, like so:

        president1 = names[1] + names[2]
        president2 = names[0] + names[2]
        names[3] = 'Chelsea'
        president3 = names[3] + names[2]

        puts president1, president2, president3
        ==> BillClinton
        ==> HillaryClinton
        ==> ChelseaClinton

    Here, `names` is an array with three members.

* Hashes: Hashes are collections of _key/value pairs_. Each member of a hash is indexed by the key, and unlike arrays, keys can be anything, not just sequential integers. In Ruby, hashes, unlike arrays, are initialized using the `{ }` operator, like so:

        clinton_family = {'mama-bear' => 'Hillary', 'papa-bear' => 'Bill'}

    But note that like arrays, indiviual members are assigned and retrieved using the `[ ]` operator:

        clinton_family['baby-bear'] = 'Chelsea'
        clinton_family['last-name'] = 'Clinton'
        president1 = clinton_family['papa-bear'] + clinton_family['last-name']
        president2 = clinton_family['mama-bear'] + clinton_family['last-name']

# Making More Complex Types

You can make more complex-looking data structures just by composing the ones we've seen so far - integers, numbers, arrays and hashes. 

For example, the members of an array can themselves be arrays:

    two_d = [ [1, 2, 4], [3, 4, 5], ['a', 'b', 'c'] ]
    puts two_d[0][2]
    puts two_d[2][1]
    ==> 4
    ==> b

Another way to get complex data types is to have the values in a hash be hashes themselves:

    student_records = { }
    student_records['Bill Smith'] = {'id' => '786', 'dob' => 'Jan 5 1978'}
    student_records['Barbara Doolittle'] = {'id' => '119', 'dob' => 'Apr 12 1981'}

The keys in a hash can themselves be hashes, or arrays - they can be anything, really, that's a valid data type:

    product_price = { }
    product_price[{'widget_name' => 'doodad', 'size' => 5}]=4.99
    product_price[{'widget_name' => 'doohickey', 'size' => 7}]=14.99

    puts "Price of Doohickey No 7 is #{product_price[{'widget_name' => 'doohickey', 'size' => 7}]}."
    ==> Price of Doohickey No 7 is 14.99.

# Advanced Topics

* **`NIL`**: There is another simple data type in Ruby which is called `nil`. It represents nothing, but that doesn't mean it is the same as an empty string or the number 0. It is typically used to denote that the behavior of something isn't as expected. For example, if you query a hash with a key that it doesn't contain, the return value is `nil`:

        h1={:a=>5,:b=>6}
        ==> {:a=>5, :b=>6}
        h1[:c]
        ==> nil

* **Automatic array re-sizing**: You can assign values to any position in an array at any point; it doesn't matter how many items are in the array already. If you assign to a position that is past the current end of the array, the intermediate 

        arr1 = [1,'a',6,'cde']
        arr1[10] = 5
        puts arr1
        ==> [1,'a',6,'cde',nil,nil,nil,nil,nil,nil,5]