# Naming Data

To refer to pieces of data, programming languages use _variables_, which is the word for the names we give to data.

Most programming languages will have "out-of-the-box" support for a couple of simple data types, like integers and strings of text. They will also have a way to manage collections of data.

## Simple Types in Ruby

The simplest data types in Ruby are:

*   Integers: Anything written as a number is assumed to be one, and you can perform most simple operations on them, for example, add, multiple, take the square of, and so on

        a=3
        b=a*2 # The value of the variable b will be 6

*   Text: Text is usually represented by enclosing it in double- or single-quotes. In Ruby, you can concatenate string together using the `+` symbol.

        first_name="Bill"
        last_name='Clinton'
        full_name=first_name + last_name
        # The value of the variable full_name will be "BillClinton"

In these examples, you can see how variable values are substituted and
assigned. The variable that is assigned to is on the left side of the
`=` symbol. Ruby will start by reading the expression to the right of
the `=` and "compute" it - that is, substitute values for the variable
names, and perform whatever operation is requested.

Note also that, like in most languages, variable names follow certain rules in Ruby:

* They can't contain spaces.
* They can't start with numbers.
* They usually only have alphanumeric characters and the underscore ("_") character. (Any other characters in a variable name means that the data will behave in certain special ways so avoid using those characters until you've learned what these special behaviors are.)

## Collections in Ruby

Collections of data are simple ways of keeping related pieces of
information together, instead of having a new name for each one. For
example, if you have a roster of names that you are reading form a
file, then rather than have a separate variable for each name, you'd
prefer to refer to them by a single variable that represents the
roster and then have them indexed by number.

There are two types of collections that are used in most languages:

* Arrays: In Ruby, arrays are initialized using the `[ ]` symbol, like so:

        names = ['Hillary', 'Bill', 'Clinton']
        president1 = names[1] + names[2] # president1 will be 'BillClinton'
        president2 = names[0] + names[2] # president2 will be 'HillaryClinton'

* Hashes: Hashes are collections of _key/value pairs_. Each element in the hash is indexed by its key. In Ruby, hashes are initialized using the `{ }` symbol, like so:

        clinton_family = {'mama-bear' => 'Hillary', 'papa-bear' => 'Bill'}
        clinton_family['baby-bear'] = 'Chelsea'
        clinton_family['last-name'] = 'Clinton'
        president1 = clinton_family['papa-bear'] + clinton_family['last-name']
        president2 = clinton_family['mama-bear'] + clinton_family['last-name']

Note how the initialization uses different symbols, but both `Hash`es
and `Array`s use the `[ ]` symbols to assign individual values.


