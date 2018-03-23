#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor
  
  number = 600851475143
  prime_arr = []
  i = 1
  while i < 775146
    if number % i == 0 && prime?(i)
      prime_arr << i 
    end
  i += 1
  end 
  prime_arr.last 
end 

def prime?(number)
  i = 2 
  while i < number
    return false if number % i == 0
    i += 1  
  end
  return true
end

largest_prime_factor # => 6857
