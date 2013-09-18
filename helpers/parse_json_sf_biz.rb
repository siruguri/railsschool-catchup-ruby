require 'json'

f_inp=File.open(ARGV[0]).readlines.join("")
json_data = JSON.parse f_inp

actual_data = json_data["data"] # The other key is "meta"

# Extract 20 businesses

input_array=[]
r=Range.new(0,20)
r.each do |index|
  input_array << []
  [10,22,23,24].each do |item_index|
    input_array[input_array.count-1] << actual_data[index][item_index]
    print "#{actual_data[index][item_index]}\t"
  end
  puts
end

f_out = File.open('reduced.json', 'w')
f_out.puts JSON[input_array]
