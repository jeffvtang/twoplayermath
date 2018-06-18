class Player

  attr_reader :current_lives :name

  def initialize(name)
    @name = name
    @current_lives = 3
    @max_lives = 3
  end

  def summary
    "#{name}: #{current_lives}/#{max_lives}"
  end
end
