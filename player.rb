class Player
  attr_reader :name, :life

  def initalize (name)
    @name = name
    @life = 3
  end

  def kill
    @life = @life - 1
  end
end