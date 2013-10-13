def say_hello(name)
  puts "Hello, #{name}"
end

ARGV.each do |arg|
  say_hello(arg)
end
