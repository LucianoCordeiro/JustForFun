def maximum_profit(shares)
  
  i = 0
  max_profit = shares[1] - shares[0]
  
  while i < shares.size - 1
  
    t = i
    while t < shares.size - 1
      difference = shares[t + 1] - shares[i]
      max_profit = difference if difference > max_profit
      t += 1 
    end
    
  i += 1
  
  end
  return max_profit 
end

shares_values = [100, 120, 122, 101, 97, 92, 99]
maximum_profit(shares_values) # => 22
