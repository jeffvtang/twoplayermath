class TurnManager
  def initialize(players)
    @users = players.shuffle    
  end

  def current_user
    @users[0]
  end

  def next
    @users.rotate!
  end
  
end
