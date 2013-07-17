begin
  puts "1"

  r=Regexp.new("+")

  puts "2"
rescue NameError, RegexpError => e
  puts "I got an error of type #{e.class}"

  puts "The error said #{e.inspect}"

  puts "The error's class hierarchy is #{e.class.ancestors}"
end


  
