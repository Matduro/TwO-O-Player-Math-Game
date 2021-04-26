module Questionnaire
  def Questionnaire.select_question_number(player, opponent)
    puts "-" * 15
    puts "It's your turn #{player.name}"
    puts "Pick a number from 1 to 20"
    print "> "
    choice = $stdin.gets.chomp
    Questionnaire.question(player, opponent, choice)
  end
    
  def Questionnaire.question(player, opponent, number)
    first = rand(1..number.to_i)
    second = rand(1..10)
    puts "What does #{first} + #{second} equal to?"
    print "> "

    answer = $stdin.gets.chomp

    if answer.to_i != (first + second)
      puts "#{player.name}: Seriously? No!"
      player.wrong_answer
      puts "your score is now #{player.score}"
      if player.score <= 0

        # player_scores = {}
        # player_scores[player.name] = player.score
        # player_scores[opponent.name] = opponent.score
        player_scores = {
        player.name => player.score,
        opponent.name => opponent.score
        }
        game_over(player_scores)
      end
    end

    Questionnaire.select_question_number(opponent, player)

  end
end