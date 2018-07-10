POSITIONS = {"a1" => ".", "a2" => ".", "a3" => ".", "b1" => ".", 
"b2" => ".", "b3" => ".", "c1" => ".", "c2" => ".", "c3" => "."}

victory_combinations_1 = [
  ["a1", "a2", "a3"], ["b1", "b2", "b3"], ["c1", "c2", "c3"],
  ["a1", "b1", "c1"], ["a2", "b2", "c2"], ["a3", "b3", "c3"],
  ["a1", "b2", "c3"], ["a3", "b2", "c1"]
]

victory_combinations_2 = [
  ["a1", "a2", "a3"], ["b1", "b2", "b3"], ["c1", "c2", "c3"],
  ["a1", "b1", "c1"], ["a2", "b2", "c2"], ["a3", "b3", "c3"],
  ["a1", "b2", "c3"], ["a3", "b2", "c1"]
]

chosen_positions = []

def main_print
  POSITIONS.each do |key, value|
    key[1] == "3" ? puts("#{value}\r\n\r\n") : print(value + "  ")      
  end
end

player1 = true

puts "============= WELCOME TO THE TIC-TAC-TOE GAME! =============\r\n\r\n"

loop do
  main_print
  if victory_combinations_1.include?([])
    puts "\r\nPlayer 1 wins!"
    break
  elsif victory_combinations_2.include?([])
    puts "\r\nPlayer 2 wins!"
    break
  end
  if chosen_positions.size == 9 
    puts "Draw!"
    break
  end
  player1 ? print("Player 1: ") : print("Player 2: ")
  input = gets.chomp
  if chosen_positions.include?(input)
    puts "\r\nThis position has been already chosen. Try another one.\r\n\r\n"
    puts "________________________________________________\r\n\r\n"
    next
  end
  if !POSITIONS.include?(input)
    puts "\r\nThis position does not exist. Try another one.\r\n\r\n"
    puts "________________________________________________\r\n\r\n"
    next
  end
  if player1 
    POSITIONS[input] = "X" 
    victory_combinations_1.each {|combination| combination.delete(input)}
    player1 = false
  else 
    POSITIONS[input] = "O" 
    victory_combinations_2.each {|combination| combination.delete(input)}
    player1 = true
  end
  chosen_positions << input
  puts "________________________________________________\r\n\r\n"
end
