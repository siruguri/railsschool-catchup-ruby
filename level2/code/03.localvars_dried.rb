def show_locals(location, b)
  puts "Location: #{location}, the variables are #{b.eval('local_variables')}"
end

def say_hello(name)
  show_locals("In the method", binding)
  # But how do I know their values? (02)
  
  puts "hello #{name}"
end

name='megan'
address='123 Main St'
show_locals("Outside the method", binding)

# And can I DRY this?

say_hello('joe')
