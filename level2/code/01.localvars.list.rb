def say_hello(name)
  puts "Inside the method now, the variables are #{local_variables}"

  puts "Variable assigned_later unbound? Ans: #{defined?(assigned_later).nil?}"
  puts "Binding assigned_later now...";  assigned_later=1
  puts "Variable assigned_later unbound? Ans: #{defined?(assigned_later).nil?}"

  # But how do I know their values? (02)
  
  puts "hello #{name}"
end

name='megan'
address='123 Main St'
puts "Outside the method, the variables are #{local_variables}" 

# And can I DRY this?

say_hello('joe')
