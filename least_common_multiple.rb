def lcm(num1, num2)
  num1, num2 = num2, num1 if num1 < num2
  multiplier = 1
  loop do
    multiple = num1 * multiplier
    return multiple if multiple % num2 == 0  
    multiplier += 1
  end
end

lcm(8, 6) # => 24
