class Question

  attr_reader :var1, :var2

  def initialize
    @var1 = rand(10) + 1
    @var2 = rand(10) + 1
  end

  def question
    "What is #{@var1} + #{@var2}?"
  end

  def input
    input = gets.chomp
  end

  def answer?(response)
    response.to_i === @var1 + @var2
  end

end
