require './player.rb'

class Game

  def initialize
    player1 = Player.new('P1')
    player2 = Player.new('P2')
  end


    
  def play
    # while not game_over?

  current_player = 'player1'
  
  puts "currently #{current_player}'s turn"
  
  # asks question + player responds

    # rotates to next turn

  end

  # def game_over?
  #   @players.any? {|p| p.lost?}
  # end

end
