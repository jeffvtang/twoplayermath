class Player

  attr_reader :current_lives, :name, :summary

  def initialize(name)
    @name = name
    @current_lives = 3
    @max_lives = 3
  end

  def lose_life
    @current_lives -= 1
  end

  def lost?
    @current_lives == 0
  end

  def summary
    "#{@name}: #{@current_lives}/#{@max_lives}"
  end
end
