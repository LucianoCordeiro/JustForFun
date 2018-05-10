def to_string(number)
  
  numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  
  return numbers[number] if number >= 0 && number < 10
  
  return numbers[number/10] + numbers[number%10] if number >= 10 && number < 100
  
  return numbers[number/100] + numbers[number % 100 / 10] + numbers[number%10] if number >= 1000 && number < 1000
  
  return numbers[number/1000] + numbers[number % 1000 / 100] + numbers[number % 100 / 10] + numbers[number%10]
  
end 


to_string(9999) # => "9999"
