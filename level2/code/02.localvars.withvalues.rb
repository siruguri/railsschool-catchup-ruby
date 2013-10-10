def say_hello(name)
  puts "Inside the function now, the variables and their values are"
  local_variables.each do |var|
    puts "#{var}: " + eval(var.to_s)
  end
  puts "hello #{name}"
end

name='megan'
address='123 Main St'
puts "Outside the method, the variables and their values are"
local_variables.each do |var|
  puts "#{var}: " + eval(var.to_s)
end

say_hello('joe')
