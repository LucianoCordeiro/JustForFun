def lcm(num1, num2)
num1_multiples, num2_multiples = [], []

multiplier = 1
  loop do
    multiple1 = num1 * multiplier
    return multiple1 if num2_multiples.include?(multiple1)
    num1_multiples << multiple1

    multiple2 = num2 * multiplier
    return multiple2 if num1_multiples.include?(multiple2)
    num2_multiples << multiple2
   
    multiplier += 1
  end
end

lcm(8, 6) # => 24
