def string_reverse(string)
  reverse_string = ""
  (0...string.size).each {|i| reverse_string[i] = string[-1 - i]}
  reverse_string
end 

string_reverse("olardadada") # => "adadadralo"
