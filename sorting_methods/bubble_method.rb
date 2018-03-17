def bubble_sort(array)
  n = array.size - 1
  n.times do
    swapped = false
    n.times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped 
  end
  array
end
