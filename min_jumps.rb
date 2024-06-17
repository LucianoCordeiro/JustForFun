def min_jumps(n, m, arr)
  jumps = 0
  i = 0

  while i < m - 1
    return -1 if arr[i] == 0 || i >= n - 1

    i += arr[i]
    jumps += 1
  end
  
  jumps
end


min_jumps(11, 11, [1,3,4,8,9,2,6,7,6,8,9]) # => 3
min_jumps(5, 3, [4,5,6,3,6]) # => 1
min_jumps(4, 4, [1,1,1,1]) # => 3
min_jumps(4, 4, [1,0,1,1]) # => -1
