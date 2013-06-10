num_of_sounds = ARGV[0].to_i

sounds = ['moo', 'meow', 'woof']

animal_by_sound={}
animal_by_sound['moo']='cow'
animal_by_sound['meow']='cat'
animal_by_sound['woof']='dog'

num_of_sounds.times do 
  index = rand(3)
  puts animal_by_sound[sounds[index]]
end

    
