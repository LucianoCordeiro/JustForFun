def fibonacci_sequence(array_size)
  y = [0,1]
  i = 2 
  while i < array_size
    y << y[i - 2] + y[i - 1]
    i += 1
  end
  return y
end

fibonacci_sequence(9) # => [0, 1, 1, 2, 3, 5, 8, 13, 21]
