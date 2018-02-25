def count(string, char)
  i = 0
  string.each_char do |m|
    i += 1 if m == char
  end
  return i
end

def first_single_character(str)
  str.each_char do |s|
    return s if count(str, s) == 1
  end
  return "There are only repeated characters"
end
