def fibonacci_sequence(array_size)
  y = [0,1]
  i = 1 
  while i < array_size - 1
    y << y[y.length - 2] + y[y.length - 1]
    i += 1
  end
  return y
end

fibonacci_sequence(9) # => [0, 1, 1, 2, 3, 5, 8, 13, 21]
