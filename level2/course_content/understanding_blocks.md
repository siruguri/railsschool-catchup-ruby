# A Russian Doll Setup

Now that we understand scope and binding, blocks become a bit easier to understand.

The scope of a block is created by combining its scope along with the scope _in which it is defined_:

   sum=0
   mesg="Not in block"
   list=[1,2,3]
   list.each { |item| mesg="In block"; puts mesg; sum += item }
   puts sum