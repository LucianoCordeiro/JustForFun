def maximum(arr)
  return arr[0] if arr[1] == nil
  arr[2] == nil || arr[0] > arr[1] ? arr[0] : arr[1]
 
  max1 = maximum(arr[0..arr.length/2 - 1])
  max2 = maximum(arr[arr.length/2..-1])

  max1 > max2 ? max1 : max2
end

arr = [21424, 44, 5533, 21, 443]

maximum(arr) # => 21424
