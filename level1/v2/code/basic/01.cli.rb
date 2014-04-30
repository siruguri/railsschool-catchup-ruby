print "This program was run with \n" 
print ARGV.count.to_s
print " arguments (ARGV.count).\n"

puts "These arguments are"

ARGV.each_with_index do |arg, index|
  puts "#{index}: #{arg}"
end
