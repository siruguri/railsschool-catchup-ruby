# Putting Together Code

In programming, bits of code are usually put together so that it's
easy to repeatedly use them. The most typical format in which this is
done is by creating _functions_. A _function_ has a name (just like
variables do) and will have:

* Zero or more arguments (very much like how your Ruby program can take in arguments from the command line)
* A single return value

In Ruby, functions are created or defined using the `def` keyword:

    def say_hello(name)
      puts "Hello, #{name}"
    end

# Execution Of Code

Ruby is an _interpreted_ language. This is typically used to mean that
will be executed at the same time that it is read; in other words, if
a part of the program is never read, it will never generate errors. In
contrast, in a _compiled_ language the entire program is first read
and then executed - this way, certain types of errors in the program
can be detected before it's ever executed. For example, in a compiled
language, you cannot use a variable on the right side of an `=` sign
unless it has already been defined. Some interpreted languages will allow you to do so, if the code that has the undefined variable is never actually read during execution.

## Interpretation In Ruby

Ruby is somewhat stricter than other interpreted languages, like Python and Perl:

* Python and Perl won't look at any code until it actually has to be
  run. If you write an `if` condition and the condition you're
  checking for is false, then anything inside the `if` block can have
  undefined variables, and it won't matter to Python and Perl
  interpreters.

* Perl, by default, doesn't even require that variables be defined
  when they are substituted. If it encounters an undefined variable,
  it treats it like an empty string for most purposes. You have to run
  Perl in "strict mode" to enforce it to not allow undefined variables to be used in code.

# Evaluating Statements

Ruby will evaluate each line of code - called a _statement_ - as it
goes along and will compute a return value for it. Every statement has
to have a return value, even if it's just the `nil` value.