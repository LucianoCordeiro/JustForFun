def count(string, char)
  arr_char = []
  string.each_char do |m|
    arr_char << m if m == char
  end
  return arr_char.size 
end

def first_single_character(str)
  str.each_char do |s|
    return s if count(str, s) == 1
  end
  return "There are only repeated characters"
end
