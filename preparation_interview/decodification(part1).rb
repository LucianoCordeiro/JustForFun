def decodification(string)
  
  decoded_string = ""
  
  i = 0
  string.each_char do |s|
    s =~ /\d+/ ? decoded_string << string[i + 1] * (s.to_i - 1) : decoded_string << s 
    i += 1
  end
  
  return decoded_string    
  
end
