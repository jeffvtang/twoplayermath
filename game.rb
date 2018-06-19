require './player.rb'
require './question_manager.rb'
require './turn_manager.rb'

class Game

  def initialize
    player1 = Player.new('P1')
    player2 = Player.new('P2')

    @players = [player1, player2]
    @turn_manager = TurnManager.new(@players)
  end
   
  def play
    while not game_over?

  current_player = @turn_manager.current_user
  
  puts "currently #{current_player.name}'s turn"
  
  q = Question.new
  puts q.question

  response = q.input

if q.answer?(response)
  puts "Correct"
else
  puts "Incorrect"
  current_player.lose_life
  puts current_player.summary
end
  # asks question + player responds

  # summary of standing
  # rotates to next turn

  @turn_manager.next

    end
    puts "Game over"
  end

  def game_over?
    @players.any? {|p| p.lost?}
  end

end
