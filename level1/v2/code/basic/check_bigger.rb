
# check_bigger: if the first argument is bigger it returns "true" o/w it returns
# false.

def check_bigger(inp1, inp2)
  if (inp1.count == inp2.count) then
    return "equal"
  elsif (inp1.count > inp2.count) then
    return "true"
  elsif (inp1.count < inp2.count) then
    return "false"
  else 
    return "unexpected"
  end
end    

arr1 = [1,2,3]
arr2 = [4, 6, 9, 10, 12]
puts("arr1 is bigger than arr2: " + check_bigger(arr1, arr2))

arr3 = [1,2,3, 'a', 'b', 'd', 'e']
arr4 = [4, 6, 9, 10, 12]

puts("arr3 is bigger than arr4: " + check_bigger(arr3, arr4))

