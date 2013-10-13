# Introduction

This document is meant to introduce the basic ideas of programming
applications, using the Ruby programming language. It assumes no prior
knowledge of programming but it does assume familiarity with how
computers work and how a &ldquo;typical&rdquo; user of a computer interacts with a
computer.

If you've used a computer to browse the Internet and check email, that
is good enough. If you&apos;ve done any math calculations, using a program
like Excel say, that&apos;s even better. It'll help you understand some of
the basic concepts and words, like &ldquo;data&rdquo; and &ldquo;printing to screen&rdquo;
quicker if you have this background.

# What is Programming?  

At its heart, all programming involves two concepts - _data_ and
_control_. Data is just that - pieces of information that are used by
the program. For example your web browser knows the URL of the webpage
it needs to retrieve - the URL is a piece of "data."

_Control_ is a fancy word, and it means everything that the program
actually does. It's the part that we usually associate with
programming - taking inputs, returning outputs, printing to the
screen, fetching webpages, connecting to a database and so on. 

Applications consist of a set of instructions that manage all the
aspects of your program's "control." The way in which an application
progresses through its set of instructions is referred to as _control
flow_.

All programming languages offer a vocabulary in which programmers
specify these two aspects - data and control flow. That's why,
unsurprisingly, programming is done in a language - because it
consists of a specific vocabulary of words, that are arranged
according to certain rules, just as &ldquo;real&rdquo; languages, that humans
speak to each other, have a grammar that dictates the rules by which
we arrange words and sentences.

# Programming in Command Line Interfaces

Command Line Interfaces are ways of communicating with programs via
text. The alternative would be to use an interface that allows you to
move elements with a mouse in order to communicate with a program -
these are usually called &ldquo;visual interfaces.&rdquo; Excel is an example of a
visual interface - to change the format of a cell, you can click on an
icon that opens up the formatting menu; to copy data from one cell to
another, you can select a starting cell and use a drag-and-drop motion
to copy it.

A command line interface takes input through the command line, which
typically has a "prompt" -- when the prompt is displayed, it means that
the interface is ready to accept input.

The interface sends output to the screen, also referred to as
"standard out" or "STDOUT." Correspondingly, the input at the prompt
is referred to as "standard in" or "STDIN".

Programs written to run at command line interfaces don&apos;t have to take
all their input from the interface; they can also take inputs from
files.

The command line interface that most computers use is typically called
a "shell." Users of Linux are familiar with shells - typically, that&apos;s
the default interface intef through which they interact with their
computers. The Windows shell is usually invoked by entering “cmd” in
the Start Menu - it&apos;s sometimes referred to as the Command Prompt. Mac
OSX users typically use an application called Terminal - a better
alternative to Terminal is iTerm.

# Programming with Interpreters

Just as you need an interpreter to understand what someone is saying
in a language that you don&apos;t understand, your computer too needs
interpreters to understand the language a program is written in. The
Ruby interpreter is called, simply, `ruby`.

# The Ruby Command Line Interface

To run a Ruby program, you have to use the shell of your preference
and type in ruby at the prompt. If Ruby is installed on your computer
and correctly configured, you should see no error (but you won&apos;t see
any action either.)

The Ruby interpreter is doing nothing because it&apos;s expecting input
from one of two sources - either you type in your Ruby program at the
command line, or you should have started `ruby` with a file that contains your program:

	shell-prompt> ruby my_program.rb

Your program is an _argument_ to the Ruby interpreter. An _argument_
is the name given to the input given to any piece of code. Because
this is an argument that is typed into a command line, it's referred
to in this case as a _command line argument_.

# The Ruby Interactive Interpreter

You can run Ruby code via another command-line interface (or *CLI*) called `irb`. If you've installed and correctly configured your Ruby installation, `irb` too should be available to your shell.

    shell-prompt> irb 

`irb` is usually run by itself, without a specified input file. It's called "interactive" because it will show you its own command-line prompt, and expects Ruby code to be typed in at the prompt.

`irb` is a great way to test out small bits of Ruby code that you're unsure of.

