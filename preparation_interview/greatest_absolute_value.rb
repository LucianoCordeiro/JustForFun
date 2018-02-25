def absolute_value(arr)
  
  valmax, valmin = arr[0], arr[0]
  arr.each do |a|
    valmax = a if valmax < a 
    valmin = a if valmin > a 
  end 
  
  return valmin if valmin -2 * valmin > valmax
  return valmax
  
end
