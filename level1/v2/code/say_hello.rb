# take a name and say "Hello <name>, your pet is <petname>"

require 'csv'
CSV.foreach("names.txt") do |row|
#  puts row[0]
#  puts row[1]
  name = row[0]
  petname = row[1]
  sound = row[2]
  print "Hello #{name}, your pet is #{petname}, and the sound it makes is #{sound}.\n"
end
