def is_greeting?(word)
  if word == 'hi' || word == 'hello' 
    return true
  else
    return false
  end
end

puts "Hi is a greeting ... #{is_greeting?('hi')}"
puts "Bye is a greeting ... #{is_greeting?('bye')}"
