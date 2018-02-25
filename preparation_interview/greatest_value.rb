def greatest_value(arr)
  
  valmax = arr[0]
  arr.each {|a| valmax = a if valmax < a} 
  return valmax
  
end
