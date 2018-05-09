def scheduling(hour)

  surveys = [{id: 1, start_time: 2, end_time: 9, priority: 3},
         {id: 2, start_time: 6, end_time: 8, priority: 2}
        ]

  surveys.sort_by! {|a| a[:priority]}
  
  surveys.each do |a| 
    return a[:id] if a[:start_time] <= hour && a[:end_time] >= hour
  end
  
  return nil
  
end

scheduling(7) # => 2
