def count(arr)
  return 1 if arr[1] == nil
  sum = 1 + count(arr[1..-1])
end

arr = [1, 3, 5, 9, 11, 3, 4, 32, 32]

count(arr) # => 9
