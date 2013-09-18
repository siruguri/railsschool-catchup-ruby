# What are instance variables? 
# AKA "scope"

class Population
  def initialize(input)
    @stored_var = input
  end

  def increment(incr_by)
    if !defined? count
      count=0
    end

    if !defined? @count
      @count=0
    end

    count += incr_by
    @count += incr_by

    puts "The count value is " + count.to_s + " and the @count value is " + @count.to_s
  end
end

scope_example = Population.new(1)

scope_example.increment(5)

# At this point, we've "touched" count and @count once each.
scope_example.increment(5)
