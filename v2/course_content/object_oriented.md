# Orienting Around Objects: Data First

The idea of object-oriented (or "OO") programming is to focus on data
- that's what the "object" in OO refers to.

## Methods In OO

In OO, methods are "attached" to objects. The idea is that a function
doesn't float around on its own, it's instead always "owned" by a
specific piece of data, and it operates on the piece of data it's
attached to, or owned by.

## You've Got A Type

The other main idea in OO is that any piece of data has a type, which
in OO programming is usually called the object's _class_.

Each class has a set of properties that is unique to itself. For example,
all numbers have the property that they have a sign, negative or
positive. 

OO languages allow programmers to write their own types. You might
write a type called Animal, for example. All animals might have a
property called `number_of_legs`, say. Or a type called Person, and all persons (people) will have a property called `name`. 

The specific piece of data that is being manipulated in a program, or during _control flow_, is 

It's important to distinguish between the properties of an object, and
the _values_ of each property. All objects of the type Human Being
have the property _name_, but the value of that property is specific to
each object (each person, in this case.) 

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

# OO Programming in Ruby

Ruby offers a number of "out-of-the-box" functions that help you investigate these concepts.

* `.class`: To any object, append `.class` and you'll get its class name.

        puts "this is a string".class
        # The output is String

* `.ancestors`: To any class name, append `.ancestors` and you'll see the hierarchy it belongs to

        puts "The ancestors of the String class are #{String.ancestors}"
        # Output -> [String, Comparable, Object, Kernel, BasicObject]

