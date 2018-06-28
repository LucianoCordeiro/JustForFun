def quicksort(arr)

  return arr if arr.empty? 

  left, pivot, right = [], arr.shift, []

  arr.each {|a| a < pivot ? left << a : right << a} 
  sorted = quicksort(left), pivot, quicksort(right)
  
  return sorted.flatten

end
