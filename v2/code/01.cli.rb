puts "This program was run with #{ARGV.count} arguments."

puts "These arguments are"
ARGV.each_with_index do |arg, index|
  puts "#{index}: #{arg}"
end
