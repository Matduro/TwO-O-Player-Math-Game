require './questionnaire'
# 2 Player game

# each player must answer a math question on their turn

# Pick a number between 1 and 20 => 1..20 for your next question

# Lose a life if you get it wrong // players start with 3 lives // game ends when a player has no lives

# announce the winner (the one who still has lives) and their score


def start(player, opponent)
  puts "Everyone loves math right?"
  puts "Good, let's play a litte math game."
  puts "Player one will start, and on each turn you each have to pick a question."
  Questionnaire.select_question_number(player, opponent)
end

def game_over(player_hash)
  player_hash.each do |player, score|
    if score > 0
      puts "-" * 20
      puts "player #{player} won with a score of #{score}, Good job!"
      puts "----- GAME OVER -----"
      puts "Ciao"
    end
  end
  exit(0)
end
