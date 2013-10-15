# Naming Your Blocks

You can pass a block within the method it's first called in, as we saw in the DOM recursion code (**6**) in [the lesson on blocks](understanding_blocks.html). But you can't hold on to a reference to the block, in order to re-use it:

    # Save this in a file called do_math.rb
    final=ARGV[1];
    if ARGV[0] == 'add' then
      ARGV[2..-1].each { |x| final += x.to_i }
    elsif ARGV[0] == 'multiply' then
      ARGV[2..-1].each { |x| final *= x.to_i }
    elsif ARGV[0] == 'subtract' then
      ARGV[2..-1].each { |x| final -= x.to_i }
    end
    puts final

    # Run the code
    ruby do_math.rb add 2 4 6
    ==> 12
    ruby do_math.rb subtract 10 5 3
    ==> 2

This structure isn't very efficient. The code for the mathematical operations is repeated unnecessarily. Ideally, we'd like to write the code more like this:

    op=ARGV[0]; final=ARGV[1];
    # def add do ... end; def multiply do ... end;

    # Let's imagine Ruby could convert strings into functions
    ARGV[2..-1].each { |x| final = function_named(op)(final, x.to_i) }
    puts final

In fact, we can do this by creating functions and assigning them to names that we can manipulate. Here's one way of doign that:

    proc_list = { "add" => Proc.new { |a, b| a+b }, "multiply" => Proc.new { |a, b| a*b } }
    op=ARGV[0]; final=ARGV[1].to_i;
    ARGV[2..-1].each { |x| final = proc_list[op].call(final, x.to_i) }
    puts final

puts final

# Scope and Call Stack

`Proc`s and blocks behave the same way with the call stack - a `return` is attempted to the location

# Advanced Topics

* The `lambda` keyword: what is it, and how is it different from Proc.new