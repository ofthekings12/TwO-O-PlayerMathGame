class Question

  attr_reader :answer
  
  def initialize
    @name = name
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1.to_i + @num2.to_i
  end

  def ask
    puts"#{@name}: What is #{@num1} + #{@num2}?"
  end

  def validate (answer)
    @answer == answer
  end
end
