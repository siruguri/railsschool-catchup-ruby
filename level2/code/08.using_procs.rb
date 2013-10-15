proc_list = { "add" => Proc.new { |a, b| a+b }, "multiply" => Proc.new { |a, b| a*b } }

op=ARGV[0]; final=ARGV[1].to_i;
ARGV[2..-1].each { |x| final = proc_list[op].call(final, x.to_i) }

puts final

