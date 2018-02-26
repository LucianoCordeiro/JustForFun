def decodification(string)
  
  i = 0
  while i < string.size
    string.insert(i + 1, ".") if string[i] =~ /[a-zA-Z+]/ && string[i + 1] =~ /\d+/
    i += 1
  end
  
  str = string.split(/[(,),.]/)
  decoded_string = ""
  
  i = 0
  str.each do |s|
    s =~ /\d+/ ? decoded_string << str[i + 1] * (s.to_i - 1) : decoded_string << s 
    i += 1
  end
  
  return decoded_string
  
end
