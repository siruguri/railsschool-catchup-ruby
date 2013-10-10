sum=0
puts ">>\n#{local_variables}\n>>"

list=[1,2,3]
list.each do |item| 
#  puts ">>>\n#{local_variables}\n>>>"
  sum += item
end

puts sum
