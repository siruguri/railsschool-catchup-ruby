# Putting Together Code

In programming, bits of code are usually put together so that it's
easy to repeatedly use them. The most typical format in which this is
done is by creating _functions_. A _function_ has a name (just like
variables do) and will have one or more of the following:

* Zero or more arguments (function inputs are called "arguments," just as how your Ruby program's inputs are called command-line arguments). For example, you might have a `multiply` function which multiplies two numbers - those will be the "arguments" of the function.
* A single return value: This is the output of the function. In the case of our `multiply` function above, if the arguments were **7** and **8**, then the _return value_ would be **56**.

In Ruby, functions are called _methods_. Note that in Ruby, all methods will have a return value, even if you think you didn't explicitly return such a value. We'll see shortly why that's the case.

Methods in Ruby are created or defined using the `def` keyword. Here's a method that takes one argument and prints it to screen (we'll worry in a bit about what its return value is.)

    def say_hello(name)
      puts "Hello, #{name}"
    end

To run the function, you use its name (`say_hello`, in this case) and supply an argument within parentheses:

    say_hello("Joe")
    ==> Hello, Joe

    say_hello("Mary")
    ==> Hello, Mary

Here's another method that takes one argument and decides, in a primitive and English-centered way, bwhether it's a greeting:

    def is_greeting?(word)
      if word == 'hi' || word == 'hello' 
         return true
      else
         return false
      end
    end
    puts "Hi is a greeting ... #{is_greeting?('hi')}"
    puts "Bye is a greeting ... #{is_greeting?('bye')}"
    ==> Hi is a greeting ... true
    ==> Bye is a greeting ... false

# Gems, Beautiful Gems

Most languages will provide collections of commonly-used methods - code to read files, for example, or to do trig calculations. These collections of methods are called a variety of names - libraries, modules, plugins, and so on. 

Ruby calls these collections of methods, _gems_. Gems usually contain more than just methods but we'll look into that later.

There is a set of methods that come "out-of-the-box" and are referred
to as the _core modules_: manipulating arrays and hashes, reading
files and directories, reading
[regular](http://net.tutsplus.com/tutorials/javascript-ajax/you-dont-know-anything-about-regular-expressions/)
[expressions](http://www.grymoire.com/Unix/Regular.html), generating
random numbers, managing processes and threads, and doing math, among
other things. To do all of this, you don't need to know anything about
the Ruby gems system.

But once you get started anything marginally interesting - like read a
webpage and extract information from it, say - then you'll need to
understand how to use gems.

To use a gem, you have to typically do two things:

* Install it: This is done using the `gem` command at your
  shell/command prompt. If you successfully installed Ruby with RVM or
  RailsInstaller, then `gem` should be available as an executable.

        gem install sqlite3
        # This will install sqlite3, a gem that allows you to create SQLite3 databases.

* Use it: To use an installed gem, you need the Ruby keyword `require`. Core modules can be `require`d without having to install them. Here's one example -- `open-uri`:

        require 'open-uri'
        # This works without having to install any gem first.
        page = open('http://www.google.com/search?q=hello+world')
        # By requiring open-uri, it's now possible to fetch a webpage using the "open" function

The core modules, and most gems, have very good documentation on the web. To see what you can do with that page you just retrieved above, check out [the open-uri documentation on Ruby-Doc.org](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/open-uri/rdoc/OpenURI.html).

# Execution Of Code

Ruby is an _interpreted_ language. This is typically used to mean that
code will be executed at the same time that it is read; in other words, if
a part of the program is never read, it will never generate errors. In
contrast, in a _compiled_ language, the entire program is first read
and then executed - this way, certain types of errors in the program
can be detected before it's ever executed. For example, in a compiled
language, you cannot use a variable on the right side of an `=` sign
unless it has already been defined. Some interpreted languages will
allow you to do so, if the code that has the undefined variable is
never actually read during execution.

## Interpretation In Ruby

Ruby is somewhat stricter than other interpreted languages like Python and Perl:

* Python and Perl won't look at any code until it actually has to be
  run. If you write an `if` condition and the condition you're
  checking for is always false, then anything inside the `if` block can have
  undefined variables, and it won't matter to Python and Perl
  interpreters.

* Perl, by default, doesn't require that variables be defined
  even when they are actually read by the interpreter. If Perl encounters an undefined variable,
  it treats it like an empty string for most purposes. You have to run
  Perl in "strict mode" to force it to disallow undefined variables from being used in code.

# Evaluating The Code

How instructions in an application are evaluated is key to
understanding most programming languages, and the relationship between
control and data. As the instructions are executed, they generate data
as they go along. This data is passed around, and will sometimes be
assigned to a variable and somtimes will get thrown away.

For example, consider how we evaluate the mathematical expression `4+2*3`. According to the rules of math that we have learned in school, the value of that expression is 10. These rules impose a certain _precedence order_ on the operations of addition and multiplication.

In particular, we are required to do the multiplication first, and then the addition. So when we compute the value of that expression, we "hold" a piece of data in our (`2*3`, which is `6`) and then look at the next piece of data - the `4` - and add `6` to it.

Ruby will similarly evaluate not just each mathematical expression,
but also each line of code - called a _statement_ - as it goes along
and will compute a value for it, using a set of rules that's specific
to the Ruby language. Every language you learn will have its own
evalation and precedence rules.

Learning all the rules is a matter of practice, but there are two rules that are good to know from the onset:

* Every statement has to have a return value, even if the return value is simply `nil`.
* The return value of a function is the return value of the last statement in the function that is executed.

## Evaluating Along The Way

Ruby gives you access to its evaluation mechanism via Ruby itself! That is, you can write a Ruby program inside a Ruby program!

Look at this piece of code - what do you think the output is, when you save this to an `.rb` file and run it?

    inner_code = "a=1; b=a+1"
    c=eval(inner_code)
    puts c+1

If you guessed **3**, then you got it right! The `eval` function treated the value of the variable `inner_code` as Ruby code, and interpreted it. The result of that evaluation is the result of the final statement in `inner_code` - which is the value of `b`; which is **2**.

# Advanced Topics

In most programming languages, when you call a method, you have to use the parentheses around the list of arguments - in Ruby, you don't have to:

    say_hello("Bob")
    ==> Hello, Bob
    say_hello "Bob" # same as above
    ==> Hello, Bob 

There _is_ a difference between the two formats - it has to do with the precedence of evaluation:

    def multiply(a,b)
        return a*b
    end
 
    puts multiply(10,2) + 3
    ==> 23
 
    # Now let's remove the parentheses
    puts multiply 10,2 + 3
    ==> 50
 
By default, a function will run through all of the statements in it, and then return the value of the last statement in it. You can cause execution to end at any point in the function by using the `return` statement:

   def readfile(filename)
       if File.exists?(filename) == false
          return nil
       end
       lines = File.open(filename).readlines
   end

This function uses the built-in `File` module. Given a filename, it
checks if the file exists and if it doesn't, returns from the function
with a `nil` return value to signify that the file didn't exists so
there's nothing (`nil`) to read. If the file does exist, it opens and
then reads from it. Note that the value of the function will be an
array of all the lines, which is the final statement in the function.

# Advanced Topics

* Read about [optional arguments for methods](http://www.ruby-doc.org/docs/ProgrammingRuby/html/tut_methods.html), and how you'd combine them with a method that takes a block as an argument.
