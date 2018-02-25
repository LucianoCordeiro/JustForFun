class Value_Collection
  
  @@arr = []
  
  def greatest_value(num)
  
    @@arr << num
    valmax = @@arr[0]
    @@arr.each {|a| valmax = a if valmax < a}
    return @@arr
    
  end
end
