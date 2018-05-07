class Value_Collection
  
  @arr = []
  
  def self.add_value(num)
    @arr << num
  end
  
  def self.greatest_value
    valmax = @arr[0]
    @arr.each {|a| valmax = a if valmax < a}
    return valmax
  end
end
