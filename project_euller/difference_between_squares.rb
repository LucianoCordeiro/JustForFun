def sum_of_squares
  
  sum = 0
  
  for i in 1..100
    sum += i*i
  end
  
  sum
  
end

def calculate_square_after_the_sum
  
  sum = 0
  
  for i in (1..100)
    sum += i
  end
  
  return sum * sum 
  
end 

def difference_between_squares
  
  difference = calculate_square_after_the_sum - sum_of_squares
  return difference 
  
end 
