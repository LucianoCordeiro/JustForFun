arr = [3, 5, 11]

def sum(arr)
  return arr[0] if arr.size < 2
  sum = arr[0] + sum(arr[1..-1])
end 

sum(arr) # => 19
