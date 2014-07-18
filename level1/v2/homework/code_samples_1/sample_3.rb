# Let's define 'parity' of two numbers to mean whether they are both
# even/odd or not - if they are both even or odd, we say their parity
# is 1, otherwise we say it's 0.

# This method returns 1 or 0, based on this definition, for two numbers represented by the input arguments.

def parity(n, m)

  if (n.even? and m.odd?) or (n.odd? and m.even?) then
    # Parity is 0
    return 0
  else
    return 1
  end
end

# Given two numbers, how would I complete this program to output its
# parity, using the method we just defined. Suppose these are the two numbers, your output would be 0:

num1 = 6
num2 = 7

# puts ** something **
