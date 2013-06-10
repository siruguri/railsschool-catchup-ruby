animal_by_sound = {}

animal_by_sound['moo']='cow'
animal_by_sound['meow']='cat'
animal_by_sound['woof']='dog'

# animal_by_sound = animal_by_sound.merge({'oink' => 'pig', 'cluck' => 'hen'})

puts animal_by_sound[ARGV[0]]

# I wish it read all the sounds from a file.

# handle = File.open(<filename>, 'r')
# handle.each do
#    print the sound
# end
