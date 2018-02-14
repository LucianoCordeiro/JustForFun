class Money 
  
  def initialize(currency, amount)
    @currency = currency 
    @amount = amount
  end
  
  def parcel(parcels_count)
    
    i_array = []
    div = @amount.to_f / parcels_count
    div_floor = (div * 100).floor / 100.0
    i_array = (i_array << div_floor) * parcels_count
    i_array[0] = (div_floor + (div - div_floor) * parcels_count).round(2)
    
    f_array = []
    i_array.each do |p|
      p.to_s.split('.')[1].size == 2 ? f_array << "#{p.to_s} #{@currency}" : f_array << "#{p.to_s}0 #{@currency}"
    end
    
    f.array
  end 
end
