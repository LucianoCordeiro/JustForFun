def binary_search(arr, number)
  first = 0
  last = arr.length - 1
  medium = last / 2
  
  while number != arr[medium]
    return nil if medium == last || medium == first
    if number > arr[medium]
      first = medium
      medium = (last + first + 1) / 2
    elsif number < arr[medium]
      last = medium 
      medium = (last - first) / 2
    end
  end
  return medium
end

arr = [3, 5, 6, 7, 12, 15, 18]
binary_search(arr, 12) # => 4
