# Method Essentials

In our basic lesson on [control and functions](../../../v2/course_content/outputs/control_and_functions.html), we learned that a function or method needs zero or more argument and has a single return value.

More strictly speaking, if we look at how methods work in other languages, they actually require something slightly different:

* A scope
* A _call stack_

The input arguments and the return value are both optional, in general; this is true in Ruby as well, though strictly speaking, Ruby methods always return a value even when you don't use the `return` keyword, because the return value of a function is the value of the last evaluated expression.

# Understanding Scope

Let's start by understanding what the `scope` of a method is. At all times in your application, Ruby has to keep track of the values of all the variables and symbols you have used. For example, in this code snippet:

    def say_hello(name)
        puts "hello #{name}"
    end
    name='megan'
    say_hello("joe")
    puts "hello #{name}"
    ==> 'hello joe' 
    ==> 'hello megan'

How does Ruby keep track that `say_hello` is a method? Why does the method `say_hello` not use the value assigned to `name` outside it, and print `hello megan` instead?

Ruby (like all programming languages) does book-keeping along the way, with some rules that are specific to it, that help it record what the value or meaning of each symbol is. This ongoing record is called the **scope**.

Note that there is a difference in Ruby  between "being in scope" and "being defined in the scope": the scope of a program will contain all variables names that are going to be defined but they won't actually be marked as defined until they are first encountered.

In the snippet above, Ruby will keep the scope inside the method distinct from the scope outside it, which is why you can have the same variable in two places without getting their values confused.

## Knowing What's In Scope

Ruby lets you inspect the current scope while the program is running, through a variety of methods that're part of the [Ruby core library](http://www.ruby-doc.org/core-2.0.0/). We'll start with a method that lists the local variables that are known to Ruby:

    def say_hello(name)
        puts "Inside the method, the variables are #{local_variables}"
        puts "hello #{name}"
	assigned_later=1
    end
    name='megan'
    address='123 Main St.'
    puts "Outside the method, the variables are #{local_variables}"
    say_hello
    puts "Outside the method, the variables are #{local_variables}"
    ==> Outside the method, the variables are [:name, :address]
    ==> Inside the method now, the variables are [:name, :assigned_later]
    ==> Outside the method, the variables are [:name, :address]
    ==> hello joe

This shows how Ruby changes the scope when it is executing inside the method - `:address` is no longer listed as a local variable while control is inside the method, but will be listed again when you return to the scope outside the method.

# Something's Bound To Happen

The specific values that are assigned to the variables when they are
defined, within a given scope, constitute a _binding_, because
variables that have been defined are said to have been "bound" to a
value. Intuitively enough, to know what value a given variable is bound to, you have to use the `binding` method.

The method cannot output the value by itself - in order to do so, you have to tell Ruby to actually perform an expression evaluation, using that binding:

    puts "The local variables are: #{local_variables}"
    puts "Is the variable a already bound to a value? Ans: #{defined? :a}"
    a=1
    value_a = binding.eval("a")
    puts "The value of a is #{value_a}"
    ==> The local variables are: [:_, :a]
    ==> The value of a is 1

This is a somewhat roundabout way of obtaining the value of a variable - after all, you could have just printed it out like so - `puts "#{a}"` - so this snippet is just to illustrate how binding works, and it's not the best solution to the problem of obtaining the value of a known variable. To get a better sense of why it's helpful, let's look at the code in snippets **1**, **2**, and **3**.

# Advanced Topics

* We saw how to list local variables - how about functions? (Read about [methods, instance_methods, and class_methods](http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/))
