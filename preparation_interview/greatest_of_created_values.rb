class Value_Collection
  
  @arr = []
  
  def self.greatest_value(num)
  
    @arr << num
    valmax = @arr[0]
    @arr.each {|a| valmax = a if valmax < a}
    return valmax
    
  end
end
