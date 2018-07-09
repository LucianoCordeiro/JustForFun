def gcd(num1, num2)
  smallest = num1 < num2 ? num1 : num2
  smallest.downto(1).each do |divisor|
    return divisor if num1 % divisor == 0 && num2 % divisor == 0
  end
end

gcd(55, 22) # => 11
