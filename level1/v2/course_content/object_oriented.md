# Orienting Around Objects: Data First

The idea of object-oriented (or "OO") programming is to focus on data
- that's what the "object" in OO refers to.

## Methods In OO

In OO, methods are "attached" to objects. The idea is that a function
doesn't float around on its own, it's instead always "owned" by a
specific piece of data, and it operates on the piece of data it's
attached to, or owned by.

Remember we said that methods take arguments or inputs. In OO, all methods receive at least one argument, which is the object that the method is attached to. You can supply more arguments using the usual notation as well, but either way, the object is available to the method.

## You've Got A Type

The other main idea in OO is that any piece of data has a type, which
in OO programming is usually called the _class_ of that piece of
data.

The specific piece of data that is being manipulated in a program -
during _control flow_, that is - is called an _object_. An object is
said to _belong_ to the class that is its type.

Each class has a set of properties that is unique to itself. For
example, all numbers have the property that they have a sign, negative
or positive.

OO languages allow programmers to write their own types. You might
write a type called Animal, for example. All animals might have a
property called `number_of_legs`, say. Or a type called Person, and
all persons (people) will have a property called `name`.

It's important to distinguish between the properties of a class, and
the _values_ of each property that a specific object has. All objects
of the type Human Being have the property _name_, so we say that the
**class** `Human Being` has the property `name`, but the value of that
property is specific to each object that belongs to that class (each
person, in this case.)

Specificity doesn't mean uniqueness. Even if my name happens to be
written the same way as yours, I can still change my name and yours
won't change with it - that's why my name is specific to me, even if
it's not unique.

## The Class Hierarchy

Once you have classes, a key extension is that these classes are all
part of a _class hierarchy_. Each class inherits from another, which
is called its parent class. Class inheritance is a key notion in OO
programming, because many of the capabilities you get as a programmer
stem from understanding the various ways in which inheritance works. 

If a type **T** _inherits_ from another type **S**, it means that data
(an object) of type **T** will have all the properties that an object
of type **S** does, plus possibly more. The type **Dog** nherits from
the type **Animal** - this means that all Dogs are Animals, but all
Animals are not Dogs. Dogs will have [properties that are common to
all Animals](https://en.wikipedia.org/wiki/Animal#Characteristics),
and will have properties additional to those that they share only with
other Dogs and with no other Animals.

There are some questions which come to mind immediately, that you should think about:

* If all classes have a parent, then doesn't that create an infinite chain of ancestry? How do you handle that?
* Can a class have more than one parent, as things do in real-life? For example, the object representing Mickey Mouse is of the type Fictional Animal. It could have two parents (among others): Animals and Fictional Characters. How does that work?
* Can an object have properties that it defines for itself, and that don't belong to its class?

# OO Programming in Ruby

## Defining and Creating Classes

In the code attached to this lesson, we look at how to define a class
of our own, and create objects that belong to this class. Look at code
snippet **4**.

## Core Classes

Now here's something about Ruby that sets it apart from most other
languages. It comes with a lot of built-in classes, which makes Ruby
easier to understand when using various data types.

Let's take a look at a couple of data types we've seen in the previous
lesson: `Array`s and `Hash`es:

    arr1 = [1,2,3]; hash1 = {1,2,3}
    puts arr1.class; puts hash1.class
    # Run this in irb to see the output.

What just happened there? Ruby offers a number of "out-of-the-box"
methods that help you investigate OO concepts. [As we described before](#toc_1), in OO programming, methods are attached to objects, so these methods are called on each array object you're analyzing:

* `.class`: To any object, append `.class` and you'll get its class name.

        puts "this is a string".class
        # The output is String

* `.ancestors`: To any class name, append `.ancestors` and you'll see the hierarchy it belongs to

        puts "The ancestors of the String class are #{String.ancestors}"
        # Output -> [String, Comparable, Object, Kernel, BasicObject]

`Array`s and `Hash`es are classes, that come pre-defined for you. But they
behave the same as any other class, even one that you might create on
your own. They have a "class name" and you can create new `Array`s and `Hash`es the same way you'd create a new object of a user-defined class.

This means that an array is an object of the class `Array` and like
all other classes, will have properties defined for it, just as we
defined properties for our class `Business` in code snippet **4**:

    arr1=[2,4,"alice","john", -6]
    # All arrays have a length property
    arr1.count # Or you can say arr1.size, it's a synonym
    ==> 5

Most importantly, you can expect that the `new` method will always be
available for any class, allowing you to create a new object instance
of the given type:

    # These two lines of code do the same thing
    arr1=[1,2]
    arr2=Array.new; arr2[0]=1; arr2[1]=2

# Advanced Topics

* Something to think about: Why are objects initialized by calling the `new` method, even though the corresponding method definition in the Class itself is called `initialize`?
* Discovering all the properties of a class: You can read the documentation for a class to learn all of its properties and methods, or for a quick list of names, you can use the instance_methods method available to all object instances in Ruby. This list might be a bit unwieldy for most classes, because it includes not just the methods of the class but of all of its ancestor classes too - to understand how to separate the two, you'll have to read up a bit on [the Ruby class hierarchy and method inheritance](http://rubylearning.com/satishtalim/ruby_inheritance.html). 
* In Ruby, **all** methods are attached to some class - just as all classes have methods, so do all methods have a class. So what class are the methods that you define "by themselves" in your application attached to? The answer is these "top-level" methods are created as [private methods of the Object class](http://stackoverflow.com/questions/1761148/where-are-methods-defined-at-the-ruby-top-level). 