class Question

  attr_reader :var1, :var2

  def question
    var1 = rand(10) + 1
    var2 = rand(10) + 1
    "What is #{var1} + #{var2}"
  end

  def input
    input = gets.chomp
  end

  def answer?(response)
    response == (var1 + var2)
  end

end
