x=['aa', 'b', 'cc', 'd']


joined_singles = ""

x.each do |item| 
  count = 0
  if item.size <= 1 then 
    joined_singles += "#{item}.." 
  end
end

puts count
puts joined_singles
