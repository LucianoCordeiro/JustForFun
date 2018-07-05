CAPITALS = ["Buenos Aires", "Brasilia", "Montevideo", "Caracas", "Bogota", "Asuncion"]

MY_WORD = CAPITALS.sample(1).join.upcase
COMPRESSED_WORD = MY_WORD.gsub(" ", "")
WRONG_LETTERS = []
errors_counter, hits_counter = 0, 0

def conversion
  conv = []
  MY_WORD.each_char {|char| char == " " ? conv << {char => "  "} : conv << {char => "__"}}
  conv
end

CONV = conversion

def make_sentence
  CONV.each {|hash| hash.each {|_, value| print value + " "}}
  puts "\r\n\r\n"
end

puts "========== WELCOME TO THE HANGMAN GAME! GOOD LUCK! ==========\r\n\r\n"

def main_print(counter)
  puts "Wrong letters: #{WRONG_LETTERS.join(", ")}"
  puts "________"
  2.times {puts "|      |"}
  case counter
  when 0  
    4.times {puts "|"}
  when 1
    puts "|      O"
    3.times {puts "|"}
  when 2
    puts "|      O"
    puts "|      /\\"
    2.times {puts "|"}
  when 3
    puts "|      O"
    puts "|      /\\"
    puts "|      ||"
    puts "|"
  when 4
    puts "|      O"
    puts "|      /\\"
    puts "|      ||"
    puts "|      WW"
    puts ""
    puts "You lost!"
    return nil
  end
  puts ""
  make_sentence
end

loop do 
  main_print(errors_counter)
break if errors_counter == 4
  if hits_counter == COMPRESSED_WORD.size
    puts "========= YOU HAVE GUESSED THE WORD! ========="
    break
  end
  input = gets.chomp.upcase
  if input !~ /^[A-Z]$/
    puts "\r\nInvalid input. Try again"
    puts "_____________________________________________________\r\n\r\n"
    next
  end
  if MY_WORD.include?(input) && input.size < 2
    CONV.each do |c|
      c.each do |key, value|
        if key == input
          value.replace(key)
          hits_counter += 1
        end
      end
    end
  else
    puts "\r\nWrong letter"
    WRONG_LETTERS << input 
    errors_counter += 1
  end
  puts "_____________________________________________________\r\n\r\n"
end
