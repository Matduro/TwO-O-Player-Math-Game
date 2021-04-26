require './questionnaire'
require './player'
require './start_game'

player_1 = Player.new('player_1')
player_2 = Player.new('player_2')

start(player_1, player_2)
