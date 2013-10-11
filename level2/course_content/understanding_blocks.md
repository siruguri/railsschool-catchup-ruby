# Scopes Inside Scopes

Now that we understand scope and binding, blocks become a bit easier to understand.

The scope of a block is created by combining its scope along with the scope _in which it is defined_:

   sum=0
   list=[1,2,3]
   list.each { |item| sum += item }
   puts sum

Unlike a method call, where the local variables of the caller's scope are unavailable to the method, the block has access to them. Note that the block has "write access" to the enclosing scope - the value assigned to `sum` changes the value of the variable `sum` in the enclosing scope.

# Method II: The Return of the Method

Let's use blocks to understand the second essential aspect of a method - its _call stack_. The call stack tells Ruby what to do once the method has completed execution - it contains a pointer to the place in your code where execution should then resume.

   [1,2].each { |x| puts caller }

The call stack at the point our block runs contains two items - `each` and `main`. Execution will flow backwards through this stack - when the block completes, its return value is available to the code in `Array.each`, and when that method completes, its return value is available to the code in `<main>`, which is the Ruby representation of the application's "top-level" scope.

## Where Blocks are Called

So how is a block called within a method? (We can't inspect the source for `Array.each` itself, because it's in **C**, not in Ruby, but if you're curious, you can look at it in the [Array class documentation for Ruby core](http://ruby-doc.org/core-2.0/Array.html#method-i-each). Click on _Toggle Source_.)

Methods access blocks using Ruby's `yield` keyword:

    def each_cell(matrix)
        ret_matrix=[]
    	matrix.each_with_index do |row, row_num|
            out_row = []
            row.each_with_index do |cell_val, col_num|
                out_row << yield(cell_val, row_num, col_num)
            end
            ret_matrix << out_row
        end

	ret_matrix
    end

We can now use this function on a "matrix", that is, an array of arrays, like so:

    matrix = [ [1,1], [2,4], [3, 9], [4, 16] ]
    new_matrix = each_cell(matrix) { |val, rn, cn| 2*val }

The block is passed in as an implicit parameter but you can make it explicit. When you do so, it has to be the last argument passed to your method. 

See code snippet **6** for an example, that uses recursion. This example uses a Ruby gem called `nokogiri` to traverse the _DOM_ of an HTML file. If you don't know what DOMs are, it suffices to understand that it's a way of breaking down an HTML file into [a network of nodes that are connected to each other through a parent-child relationship](http://eloquentjavascript.net/chapter12.html).

