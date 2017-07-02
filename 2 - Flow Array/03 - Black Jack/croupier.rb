require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "The bank's score is #{bank_score}. Your score is #{player_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score == 21
    return "Black Jack"
  elsif player_score > 21
    return "You lose!"
  elsif player_score == bank_score
    return "Push"
  elsif player_score > bank_score
    return "You win!"
  elsif player_score < bank_score
    return "You lose"
  end
end

def play_game
  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
  puts "Card? 'y' or 'yes' to get a new card"
  answer = gets.chomp
  while answer == "y" || answer == "yes"
    player_score = pick_bank_score
    bank_score = pick_player_card
    puts state_of_the_game(player_score, bank_score)
    puts "Card? 'y' or 'yes' to get a new card"
    answer = gets.chomp
  end
  puts end_game_message(player_score, bank_score)
end
