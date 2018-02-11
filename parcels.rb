def parcel(sum, num_of_parcels)
  
  parcels_array = []
  
  division = sum.to_f / num_of_parcels
  
  i = 0
  while i < num_of_parcels
    parcels_array[i] = division.to_s[0..3].to_f
    i += 1
  end
  
  parcels_array
  
end 

parcel(22, 7) # => [3.14, 3.14, 3.14, 3.14, 3.14, 3.14, 3.14]
