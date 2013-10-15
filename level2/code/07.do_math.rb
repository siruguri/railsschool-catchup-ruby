final=ARGV[1].to_i;
if ARGV[0] == 'add' then
  ARGV[2..-1].each { |x| final += x.to_i }
elsif ARGV[0] == 'multiply' then
  ARGV[2..-1].each { |x| final *= x.to_i }
elsif ARGV[0] == 'subtract' then
  ARGV[2..-1].each { |x| final -= x.to_i }
end

puts final
