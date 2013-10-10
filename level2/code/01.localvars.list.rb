def say_hello(name)
  puts "Inside the method now, the variables are #{local_variables}"

  puts "The status of the symbol 'assigned_later' is"
  if defined?(assigned_later).nil?
    puts '>>> not defined'
  else
    puts '>>> defined'
  end

  # But how do I know their values? (02)
  
  puts "hello #{name}"
  assigned_later=1
end

name='megan'
address='123 Main St'
puts "Outside the method, the variables are #{local_variables}" 

# And can I DRY this?

say_hello('joe')
