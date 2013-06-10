animal_by_sound = {}

animal_by_sound['moo']='cow'
animal_by_sound['meow']='cat'
animal_by_sound['woof']='dog'

# animal_by_sound = animal_by_sound.merge({'oink' => 'pig', 'cluck' => 'hen'})

puts animal_by_sound[ARGV[0]]

# I wish it said something like "The animal that says moo is a cow" when I input the command line argument "moo."
# That's easier to understand.

puts "The animal that says <the word that's been input> is a <the animal name>."
puts "The animal that says", a_variable_goes_here, "is a ", another_variable_goes_here


