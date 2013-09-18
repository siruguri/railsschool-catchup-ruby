begin
  puts "1".each

#  r=Regexp.new("+")

  puts "2"

rescue NameError => e
  puts "Var not defined"
  puts e.class.ancestors
rescue RegexpError => e
  puts "I got an error of type #{e.class}"

  puts "The error said #{e.inspect}"

  puts "The error's class hierarchy is #{e.class.ancestors}"
rescue NoMethodError => e
  puts "No method"

end
