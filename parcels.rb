def parcel(sum, num_of_parcels)
  
  parcels_array = []
  
  division = sum.to_f / num_of_parcels
  array_division = division.to_s.split * num_of_parcels
  array_division.each do |parcel|
    parcels_array << parcel[0..3].to_f
  end
  
  parcels_array
  
end 


parcel(22, 7) # => [3.14, 3.14, 3.14, 3.14, 3.14, 3.14, 3.14]
