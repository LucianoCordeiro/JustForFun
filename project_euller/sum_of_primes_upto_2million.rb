def prime?(number)
  
  i = 2 
  while i <= number/2 
    return false if number % i == 0 
    i += 1
  end 
  
  return true 
  
end


def sum_of_primes

i = 2_000_000
sum = 0

  while i > 1
    if prime?(i)
      sum += i 
    end 
    i -= 1 
  end 
  
  sum
  
end 

sum_of_primes
