class Value_Collection
  
  @arr = []

  def self.absolute_value(num)
    
    @arr << num
    @arr.sort!
    
    return num if @arr.size == 1

    exval = [] << @arr[0] << @arr[1] << @arr[-2] << @arr[-1]

    exval[0] + -2 * exval[0] > exval[-1] ? exval.shift : exval.pop
    exval[0] + -2 * exval[0] > exval[-1] ? exval.shift : exval.pop
    
  end
end 
